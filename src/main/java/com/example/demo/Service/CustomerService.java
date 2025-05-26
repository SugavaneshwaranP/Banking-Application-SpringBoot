package com.example.demo.Service;

import com.example.demo.Entity.CustomerEntity;
import com.example.demo.Repo.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Service
public class CustomerService {

    private static final Logger logger = LoggerFactory.getLogger(CustomerService.class);

    @Autowired
    private CustomerRepository customerRepository;

    /**
     * Authenticate a customer based on email and PIN.
     * 
     * @param email The email address of the customer.
     * @param pin The 6-digit PIN of the customer.
     * @return The authenticated CustomerEntity if credentials are valid; otherwise, null.
     */
    public CustomerEntity authenticateCustomer(String email, String pin) {
        try {
            // Fetch the customer by email
            CustomerEntity customer = customerRepository.findByEmail(email);

            // Validate the PIN if the customer exists
            if (customer != null && pin != null && customer.getPin().equals(pin)) {
                return customer; // Successful authentication
            }
        } catch (Exception e) {
            logger.error("Error occurred during authentication", e);
        }

        return null; // Authentication failed
    }

    /**
     * Register a new customer.
     * 
     * @param customer The customer entity to be registered.
     * @return A success or failure message.
     */
    public String registerCustomer(CustomerEntity customer) {
        try {
            // Check if the email is already taken
            if (customerRepository.findByEmail(customer.getEmail()) != null) {
                return "Email is already registered!";
            }

            // Save the customer to the database
            customerRepository.save(customer);
            return "Customer registered successfully!";
        } catch (Exception e) {
            logger.error("Error occurred during registration", e);
            return "Error occurred during registration: " + e.getMessage();
        }
    }

    /**
     * Fetch customer details by account number.
     * 
     * @param accountNumber The account number of the customer.
     * @return The CustomerEntity if found; otherwise, null.
     */
    public CustomerEntity getCustomerByAccountNumber(String accountNumber) {
        try {
            return customerRepository.findByAccountNumber(accountNumber);
        } catch (Exception e) {
            logger.error("Error occurred while fetching account details", e);
            return null;
        }
    }

    /**
     * Update customer information in the database.
     * 
     * @param updatedCustomer The updated customer entity.
     * @return A success or failure message.
     */
    public String updateCustomerDetails(CustomerEntity updatedCustomer) {
        try {
            if (customerRepository.existsById(updatedCustomer.getId())) {
                customerRepository.save(updatedCustomer);
                return "Customer details updated successfully!";
            } else {
                return "Customer not found in the database.";
            }
        } catch (Exception e) {
            logger.error("Error occurred while updating customer details", e);
            return "Error occurred during the update: " + e.getMessage();
        }
    }

    /**
     * Delete a customer record by account number.
     * 
     * @param accountNumber The account number of the customer to be deleted.
     * @return A success or failure message.
     */
    public String deleteCustomerByAccountNumber(String accountNumber) {
        try {
            CustomerEntity customer = customerRepository.findByAccountNumber(accountNumber);
            if (customer != null) {
                customerRepository.delete(customer);
                return "Customer record deleted successfully!";
            } else {
                return "Customer not found in the database.";
            }
        } catch (Exception e) {
            logger.error("Error occurred while deleting customer record", e);
            return "Error occurred during deletion: " + e.getMessage();
        }
    }
}

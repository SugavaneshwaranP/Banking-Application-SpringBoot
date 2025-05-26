package com.example.demo.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.demo.Entity.CustomerEntity;
import com.example.demo.Service.CustomerService;

import jakarta.servlet.http.HttpSession;

@Controller
public class DashboardController {

    @Autowired
    private CustomerService customerService;

    /**
     * Display the dashboard for a logged-in customer.
     *
     * @param session The HTTP session to retrieve customer details.
     * @param model The Model object to pass data to the view.
     * @return The name of the dashboard JSP view.
     */
    @GetMapping("/dashboard")
    public String showDashboard(HttpSession session, Model model) {
        // Retrieve account number from session
        String accountNumber = (String) session.getAttribute("accountNumber");

        // If the session does not contain account number, redirect to login
        if (accountNumber == null) {
            return "redirect:/login";
        }

        // Fetch customer details from the database
        CustomerEntity customer = customerService.getCustomerByAccountNumber(accountNumber);

        // If customer details are not found, redirect to login with an error message
        if (customer == null) {
            model.addAttribute("error", "Customer details not found! Please try again.");
            return "login";
        }

        // Add customer details to the model for the dashboard view
        model.addAttribute("customerName", customer.getName());
        model.addAttribute("accountNumber", customer.getAccountNumber());
        model.addAttribute("accountType", customer.getAccountNumber());
        model.addAttribute("accountBalance", customer.getBalance());

        // Render the dashboard page
        return "dashboard"; // This should map to `dashboard.jsp`
    }
}

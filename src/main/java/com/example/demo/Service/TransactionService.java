package com.example.demo.Service;

import com.example.demo.Entity.CustomerEntity;
import com.example.demo.Entity.TransactionEntity;
import com.example.demo.Repo.CustomerRepository;
import com.example.demo.Repo.TransactionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;

@Service
public class TransactionService {

    @Autowired
    private TransactionRepository transactionRepository;

    @Autowired
    private CustomerRepository customerRepository;

    /**
     * Handles money transfer between two accounts.
     */
    @Transactional
    public String transferMoney(String senderAccount, String receiverAccount, BigDecimal amount) {
        try {
            // Fetch sender and receiver details
            CustomerEntity sender = customerRepository.findByAccountNumber(senderAccount);
            CustomerEntity receiver = customerRepository.findByAccountNumber(receiverAccount);

            // Check if sender account exists
            if (sender == null) {
                return "Sender account not found!";
            }

            // Check if receiver account exists
            if (receiver == null) {
                return "Receiver account not found!";
            }

            // Check if sender has sufficient funds
            if (sender.getBalance().compareTo(amount) < 0) {
                return "Insufficient funds!";
            }

            // Deduct the amount from sender's balance
            sender.setBalance(sender.getBalance().subtract(amount));

            // Add the amount to receiver's balance
            receiver.setBalance(receiver.getBalance().add(amount));

            // Save updated balances
            customerRepository.save(sender);
            customerRepository.save(receiver);

            // Create transaction record
            TransactionEntity transaction = new TransactionEntity();
            transaction.setSenderAccount(senderAccount);
            transaction.setReceiverAccount(receiverAccount);
            transaction.setAmount(amount);

            // Save transaction record
            transactionRepository.save(transaction);

            return "Transfer successful!";

        } catch (Exception e) {
            // Log the exception and return a general error message
            e.printStackTrace();
            return "An error occurred while processing the transfer!";
        }
    }

	public Object getTransactionsByAccountNumber(String accountNumber) {
		// TODO Auto-generated method stub
		return null;
	}
}


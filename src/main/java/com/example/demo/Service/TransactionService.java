package com.example.demo.Service;

import com.example.demo.Entity.CustomerEntity;
import com.example.demo.Entity.TransactionEntity;
import com.example.demo.Repo.CustomerRepository;
import com.example.demo.Repo.TransactionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.math.BigDecimal;
import java.util.List;
import java.util.Collections;

@Service
public class TransactionService {

    private static final Logger logger = LoggerFactory.getLogger(TransactionService.class);

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
            // Validate amount
            if (amount == null || amount.compareTo(BigDecimal.ZERO) <= 0) {
                return "Transfer amount must be greater than zero!";
            }

            // Cannot transfer to self
            if (senderAccount.equals(receiverAccount)) {
                return "Cannot transfer to the same account!";
            }

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
            logger.error("Error occurred while processing the transfer", e);
            return "An error occurred while processing the transfer!";
        }
    }

    /**
     * Fetch all transactions for a given account number (sent and received).
     *
     * @param accountNumber The account number to fetch transactions for.
     * @return List of TransactionEntity objects, or empty list if none found.
     */
    public List<TransactionEntity> getTransactionsByAccountNumber(String accountNumber) {
        try {
            if (accountNumber == null || accountNumber.isBlank()) {
                return Collections.emptyList();
            }
            return transactionRepository
                    .findBySenderAccountOrReceiverAccountOrderByTransactionDateDesc(
                            accountNumber, accountNumber);
        } catch (Exception e) {
            logger.error("Error occurred while fetching transactions for account: " + accountNumber, e);
            return Collections.emptyList();
        }
    }
}

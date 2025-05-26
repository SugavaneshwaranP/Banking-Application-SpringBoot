package com.example.demo.Entity;

import jakarta.persistence.*;
import java.math.BigDecimal;  // Import BigDecimal

@Entity
@Table(name = "bank_users")
public class CustomerEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String name;

    @Column(unique = true)
    private String email;

    private String mobile;

    @Column(name = "account_number", unique = true)
    private String accountNumber;

    private String pin;

    @Column(name = "branch_name")
    private String branchName;

    @Column(name = "balance")
    private BigDecimal balance = BigDecimal.ZERO;  // Add balance field as BigDecimal

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getAccountNumber() {
        return accountNumber;
    }

    public void setAccountNumber(String accountNumber) {
        this.accountNumber = accountNumber;
    }

    public String getPin() {
        return pin;
    }

    public void setPin(String pin) {
        this.pin = pin;
    }

    public String getBranchName() {
        return branchName;
    }

    public void setBranchName(String branchName) {
        this.branchName = branchName;
    }

    public BigDecimal getBalance() {  // Change return type to BigDecimal
        return balance;
    }

    public void setBalance(BigDecimal balance) {  // Set balance as BigDecimal
        this.balance = balance;
    }
}

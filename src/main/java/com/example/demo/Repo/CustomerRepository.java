package com.example.demo.Repo;

import com.example.demo.Entity.CustomerEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerRepository extends JpaRepository<CustomerEntity, Integer> {
	CustomerEntity findByEmail(String email);
	CustomerEntity findByAccountNumber(String accountNumber);
}

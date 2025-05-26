package com.example.demo.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import jakarta.servlet.http.HttpSession;
import com.example.demo.Service.TransactionService;

@Controller
public class TransactionHistory {

    @Autowired
    private TransactionService transactionService;

    @GetMapping("/TransactionHistory")
    public String showTransactionHistory(HttpSession session, Model model) {
        String accountNumber = (String) session.getAttribute("accountNumber");

        if (accountNumber == null) {
            return "redirect:/login";
        }

        model.addAttribute("transactions", transactionService.getTransactionsByAccountNumber(accountNumber));
        return "TransactionHistory";
    }
}

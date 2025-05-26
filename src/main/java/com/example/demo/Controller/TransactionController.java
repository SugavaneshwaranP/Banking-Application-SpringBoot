package com.example.demo.Controller;

import com.example.demo.Service.TransactionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.math.BigDecimal;

@Controller
public class TransactionController {

    @Autowired
    private TransactionService transactionService;

    // Mapping for the transfer funds page (GET request)
    @GetMapping("/transferFunds")
    public String showTransferPage(Model model) {
        // You can add any initial data to the model if needed
        return "transferFunds"; // This will forward to transferFunds.jsp
    }

    // Mapping for handling the form submission (POST request)
    @PostMapping("/transferFunds")
    public String transferMoney(
            @RequestParam("senderAccount") String senderAccount,
            @RequestParam("receiverAccount") String receiverAccount,
            @RequestParam("amount") BigDecimal amount,
            Model model) {

        // Perform the transfer and get the result message
        String result = transactionService.transferMoney(senderAccount, receiverAccount, amount);
        
        // Add the result to the model to display it on the JSP page
        model.addAttribute("message", result);

        // Return to the transferFunds.jsp page with the status message
        return "transferFunds";
    }
}

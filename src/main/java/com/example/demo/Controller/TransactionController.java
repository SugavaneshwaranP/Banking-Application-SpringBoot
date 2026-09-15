package com.example.demo.Controller;

import com.example.demo.Service.TransactionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;
import java.math.BigDecimal;

@Controller
public class TransactionController {

    @Autowired
    private TransactionService transactionService;

    // Mapping for the transfer funds page (GET request)
    @GetMapping("/transferFunds")
    public String showTransferPage(HttpSession session, Model model) {
        // Check if user is logged in
        String accountNumber = (String) session.getAttribute("accountNumber");
        if (accountNumber == null) {
            return "redirect:/login";
        }
        return "transferFunds"; // This will forward to transferFunds.jsp
    }

    // Mapping for handling the form submission (POST request)
    @PostMapping("/transferFunds")
    public String transferMoney(
            @RequestParam("senderAccount") String senderAccount,
            @RequestParam("receiverAccount") String receiverAccount,
            @RequestParam("amount") BigDecimal amount,
            HttpSession session,
            Model model) {

        // Check if user is logged in
        String accountNumber = (String) session.getAttribute("accountNumber");
        if (accountNumber == null) {
            return "redirect:/login";
        }

        // Perform the transfer and get the result message
        String result = transactionService.transferMoney(senderAccount, receiverAccount, amount);
        
        // Add the result to the model to display it on the JSP page
        model.addAttribute("message", result);

        // Set message type for styling (success or error)
        if (result.contains("successful")) {
            model.addAttribute("messageType", "success");
        } else {
            model.addAttribute("messageType", "error");
        }

        // Return to the transferFunds.jsp page with the status message
        return "transferFunds";
    }
}

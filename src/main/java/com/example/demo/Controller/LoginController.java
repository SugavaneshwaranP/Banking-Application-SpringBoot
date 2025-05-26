package com.example.demo.Controller;

import com.example.demo.Entity.CustomerEntity;
import com.example.demo.Service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;

@Controller
public class LoginController {

    @Autowired
    private CustomerService customerService;

    // Show login page
    @GetMapping("/login")
    public String showLoginPage() {
        return "login"; // Return login.jsp
    }

    // Handle login form submission
    @PostMapping("/login")
    public String processLogin(
            @RequestParam("email") String email,
            @RequestParam("pin") String pin,
            HttpSession session, 
            Model model) {
        
        // Authenticate user
        CustomerEntity user = customerService.authenticateCustomer(email, pin);

        if (user != null) {
            // Store user details in session
            session.setAttribute("customerName", user.getName());
            session.setAttribute("accountNumber", user.getAccountNumber());
            session.setAttribute("accountType", user.getAccountNumber());
            session.setAttribute("accountBalance", user.getBalance());

            return "redirect:/dashboard"; // Redirect to dashboard
        } else {
            // If login fails, show an error message
            model.addAttribute("error", "Invalid email or PIN. Please try again.");
            return "login"; // Stay on login page
        }
    }
}

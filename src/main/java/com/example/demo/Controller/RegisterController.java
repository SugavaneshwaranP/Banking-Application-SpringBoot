package com.example.demo.Controller;

import com.example.demo.Entity.CustomerEntity;
import com.example.demo.Service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class RegisterController {

    @Autowired
    private CustomerService bankUserService;

    /**
     * Show the registration page.
     */
    @GetMapping("/register")
    public String showRegisterPage() {
        return "register";
    }

    /**
     * Handle registration form submission.
     */
    @PostMapping("/register")
    public String registerUser(
            @RequestParam("name") String name,
            @RequestParam("email") String email,
            @RequestParam("mobile") String mobile,
            @RequestParam("accountNumber") String accountNumber,
            @RequestParam("pin") String pin,
            @RequestParam("branch") String branch,
            Model model) {

        CustomerEntity user = new CustomerEntity();
        user.setName(name);
        user.setEmail(email);
        user.setMobile(mobile);
        user.setAccountNumber(accountNumber);
        user.setPin(pin);
        user.setBranchName(branch); // Map 'branch' form field to 'branchName' entity field

        String message = bankUserService.registerCustomer(user);
        model.addAttribute("message", message);

        // Determine message type for UI styling
        if (message.contains("successfully")) {
            model.addAttribute("messageType", "success");
        } else {
            model.addAttribute("messageType", "error");
        }

        return "register";
    }
}

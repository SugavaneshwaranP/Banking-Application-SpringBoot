package com.example.demo.Controller;

import com.example.demo.Entity.CustomerEntity;
import com.example.demo.Service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RegisterController {

    @Autowired
    private CustomerService bankUserService;

    @RequestMapping("/register")
    public String registerUser(@ModelAttribute CustomerEntity user, Model model) {
        String message = bankUserService.registerCustomer(user);
        model.addAttribute("message", message);
        return "register"; // Redirect back to the registration page with a message
    }
}

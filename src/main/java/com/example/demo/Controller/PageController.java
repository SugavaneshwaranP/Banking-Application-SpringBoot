package com.example.demo.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PageController {

    @GetMapping("/fdDetails")
    public String fdDetails() {
        return "fdDetails"; // refers to fdDetails.jsp inside /WEB-INF/views/
    }

    @GetMapping("/rdDetails")
    public String rdDetails() {
        return "rdDetails";
    }

   }

package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

    private static final String REGISTERED_EMAIL = "user@example.com";
    private static final String REGISTERED_PASSWORD = "password";

    @GetMapping("/login")
    public String showLoginPage() {
        return "LoginPage"; 
    }
    
    @GetMapping("/home")
    public String showHomePage() {
        return "HomePage"; 
    }

    @PostMapping("/login")
    public String login(@RequestParam String email, @RequestParam String password, Model model) {
        
        if (email.equals(REGISTERED_EMAIL) && password.equals(REGISTERED_PASSWORD)) {
            return "redirect:/home";
        } else {
            model.addAttribute("error", "Invalid email or password");
            return "login";
        }
    }
}

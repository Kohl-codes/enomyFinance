package com.spring.controller;

import com.spring.model.User;
import com.spring.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RegController {

    private final UserService userService;

    @Autowired
    public RegController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/")
    public String showRegistrationForm() {
        return "RegistrationPage";
    }

    @PostMapping("/registration")
    public ModelAndView registerUser(User user) {
        ModelAndView modelAndView = new ModelAndView();

        try {
            userService.registerNewUser(user.getName(), user.getEmail(), user.getPassword());
            modelAndView.setViewName("redirect:/thankyou");
        } catch (RuntimeException e) {
            modelAndView.setViewName("RegistrationPage");
            modelAndView.addObject("error", "Registration failed. Please try again.");
        }

        return modelAndView;
    }
}

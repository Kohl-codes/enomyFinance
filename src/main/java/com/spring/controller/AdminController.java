package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {

    
	@GetMapping("/AdminPage.jsp")
    public String showThankyouPage() {
        return "AdminPage";
    }

	@PostMapping("/EnomySpring/AdminPage.jsp")
	public ModelAndView redirectToLoginPage() {
	    ModelAndView modelAndView = new ModelAndView("redirect:/AdminPage");
	    return modelAndView;
	}


}

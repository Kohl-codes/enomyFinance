package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ThankyouController {

    
	@GetMapping("/thankyou")
    public String showThankyouPage() {
        return "ThankyouPage";
    }

	@PostMapping("/EnomySpring/thankyou")
	public ModelAndView redirectToLoginPage() {
	    ModelAndView modelAndView = new ModelAndView("redirect:/login");
	    return modelAndView;
	}


}

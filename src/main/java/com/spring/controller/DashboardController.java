package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DashboardController {

    @GetMapping("/EnomySpringMVC/DashboardServlet")
    public ModelAndView showCurrencyConverterPage() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("DashboardPage");
        return modelAndView;
    }
}

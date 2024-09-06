package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class InvestmentsController {

    @GetMapping("/EnomySpringMVC/InvestmentsServlet")
    public ModelAndView showCurrencyConverterPage() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("InvestmentsPage");
        return modelAndView;
    }
}

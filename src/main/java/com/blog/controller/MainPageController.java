package com.blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainPageController {


    @GetMapping("/")
    public String greeting(Model model) {
        model.addAttribute("name", "MotherFucker");
        return "mainPage";
    }

    @GetMapping("/admin")
    public String admin(){
        return "admin";
    }

}

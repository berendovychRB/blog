package com.blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainPageController {


    @GetMapping("/")
    public String greeting(Model model) {
        model.addAttribute("name", "MotherFucker");
        return "home";
    }

    @GetMapping("/about")
    public String about(Model model) {
        model.addAttribute("title", "Сторінка про нас");
        return "about";
    }

    @GetMapping("/admin")
    public String admin(){
        return "admin";
    }

}

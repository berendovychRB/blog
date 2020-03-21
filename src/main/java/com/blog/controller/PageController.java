package com.blog.controller;

import com.blog.entity.User;
import com.blog.repository.UserRepository;
import com.blog.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PageController {

    @Autowired
    private UserRepository repository;

    @Autowired
    private UserService service;

    @GetMapping("/page")
    public String page(Model model, User user){
        user = repository.findByNickName(service.getOne());
        model.addAttribute("user",user);
        return "page";
    }

}

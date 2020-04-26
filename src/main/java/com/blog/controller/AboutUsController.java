package com.blog.controller;

import com.blog.entity.Post;
import com.blog.entity.User;
import com.blog.repository.PostRepository;
import com.blog.service.PostService;
import com.blog.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Date;

@Controller
public class AboutUsController {

    @Autowired
    private PostService service;

    @Autowired
    private PostRepository repository;

    @Autowired
    private UserService userService;


    @GetMapping("/about")
    public String about(Model model) {
        User user = userService.getCurrentUser();
        model.addAttribute("user", user);
        return "about";
    }




}

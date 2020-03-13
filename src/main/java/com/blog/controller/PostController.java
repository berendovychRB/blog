package com.blog.controller;

import com.blog.repository.PostRepository;
import com.blog.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class PostController {

    @Autowired
    private PostRepository repository;
    @Autowired
    private PostService service;

    @GetMapping("/newsline/{id}")
    public String posts(@PathVariable(name = "id") Long id,Model model){
        model.addAttribute("posts", service.postToDto(service.getAllByUserId(id)));
        return "newsline";
    }
    @PostMapping("/addpost")
    public String addPost(@RequestParam(name = "text") String text,Model model){
        service.addPost(text);
        return "redirect:/newsline/{id}";
    }


}

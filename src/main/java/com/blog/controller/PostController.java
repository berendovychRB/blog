package com.blog.controller;

import com.blog.entity.Post;
import com.blog.entity.User;
import com.blog.repository.PostRepository;
import com.blog.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
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

    @GetMapping("/blog")
    public String blogMain(Model model){
        Iterable<Post> posts = repository.findAll();
        model.addAttribute("posts", posts);
        return "blogMain";
    }

    @GetMapping("/blog/add")
    public String postAdd(Model model){
        return "postAdd";
    }

    @PostMapping("/blog/add")
    public String postToAdd(@RequestParam String title,
                            @RequestParam String text,
                            Model model)
    {
        Post post = new Post(title, text);
        repository.save(post);
        return "redirect:/blog";
    }

}


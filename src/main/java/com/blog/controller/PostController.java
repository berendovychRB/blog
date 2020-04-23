package com.blog.controller;

import com.blog.entity.Post;
import com.blog.entity.User;
import com.blog.service.PostService;
import com.blog.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;


@Controller
public class PostController {

    @Autowired
    private PostService service;

    @Autowired
    private UserService userService;

    @GetMapping("/")
    public String greeting(Model model) {
        User user = userService.getCurrentUser();
        List<User> users = userService.getAll();
        model.addAttribute("user", user);
        model.addAttribute("users", users);
        Iterable<Post> posts = service.getAll();
        Collections.reverse((List<Post>) posts);
        model.addAttribute("posts", posts);
        return "home";
    }


    @PostMapping("/")
    public String postToAdd(@RequestParam String title,
                            @RequestParam String text,
                            Model model) {
        Date time = new Date();
        if (!text.equals("")) {
            Post post = new Post(title, text, time);
            post.setUser(userService.getCurrentUser());
            service.save(post);
        } else {
            System.out.println("error");
        }
        return "redirect:/";
    }

    @PostMapping("/likes/{id}")
    public String likes(@PathVariable(name = "id") Long id, Model model) {
        Post post = service.getOne(id);
        post.setLiked(service.addUserToList(post));
        return "redirect:/";
    }

}


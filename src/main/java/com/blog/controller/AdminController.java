package com.blog.controller;

import com.blog.entity.Comment;
import com.blog.entity.Post;
import com.blog.entity.User;
import com.blog.service.CommentService;
import com.blog.service.PostService;
import com.blog.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Collections;
import java.util.List;

@Controller
@PreAuthorize("hasAuthority('ROLE_ADMIN')")
public class AdminController {

    @Autowired
    private UserService userService;

    @Autowired
    private PostService postService;

    @Autowired
    private CommentService commentService;

    @GetMapping("/admin")
    public String admin(Model model){
        List<User> users = userService.getAll();
        model.addAttribute("users", users);
        Iterable<Post> posts = postService.getAll();
        Collections.reverse((List<Post>) posts);
        model.addAttribute("posts", posts);
        List<Comment> comments = commentService.getAll();
        model.addAttribute("comments", comments);
        return "admin";
    }

    @PostMapping("/delete/{id}")
    public String adminsButton(@PathVariable(name = "id") Long id){
        userService.delete(id);
        return "redirect:/admin";
    }

    @PostMapping("/getAdmin/{id}")
    public String adminsRole(@PathVariable(name = "id") Long id){
        userService.giveAdmin(id);
        return "redirect:/admin";
    }

    @PostMapping("/getUser/{id}")
    public String userRole(@PathVariable(name = "id") Long id){
        userService.giveUser(id);
        return "redirect:/admin";
    }

    @PostMapping("/postDelete/{id}")
    public String postDelete(@PathVariable(name = "id") Long id){
        postService.delete(id);
        return "redirect:/admin";
    }

    @PostMapping("/commentDelete/{id}")
    public String commentDelete(@PathVariable(name = "id") Long id){
        commentService.delete(id);
        return "redirect:/admin";
    }
}

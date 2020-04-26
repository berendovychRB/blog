package com.blog.controller;

import com.blog.entity.Comment;
import com.blog.entity.Post;
import com.blog.entity.User;
import com.blog.service.CommentService;
import com.blog.service.PostService;
import com.blog.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Date;
import java.util.List;

@Controller
public class CommentController {

    @Autowired
    private CommentService commentService;

    @Autowired
    private UserService userService;

    @Autowired
    private PostService postService;

    @GetMapping("/post/{id}/comments")
    public String comments(@PathVariable(name = "id")Long id, Model model){
        Post post = postService.getOne(id);
        User user = userService.getCurrentUser();
        List<Comment> comments = commentService.getAllByPostId(id);
        model.addAttribute("user", user);
        model.addAttribute("post",post);
        model.addAttribute("comments", comments);
        Integer likes = userService.countLikes(post);
        model.addAttribute("likes", likes);
        return "comment";
    }

    @PostMapping("/post/{id}/comments")
    public String addComment(@RequestParam String text,@PathVariable(name = "id")Long id,Model model){
        Date time = new Date();
        Post post = postService.getOne(id);
            Comment comment = new Comment(text, time);
            comment.setPost(postService.getOne(id));
            comment.setUser(userService.getCurrentUser());
            commentService.save(comment);

        return "redirect:/post/" + post.getId() +"/comments";
    }

}

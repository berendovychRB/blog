package com.blog.controller;

import com.blog.entity.Comment;
import com.blog.entity.Post;
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

@Controller
public class EditPostsAndCommentsController {

    @Autowired
    private UserService userService;

    @Autowired
    private PostService postService;

    @Autowired
    private CommentService commentService;

    @GetMapping("/editPost/{id}")
    private String myPost(@PathVariable(name = "id")Long id, Model model){
        Post post = postService.getOne(id);
        model.addAttribute("post", post);
        return "editThisPost";
    }

    @PostMapping("/editPost/{id}")
    private String editMyPost(@PathVariable(name = "id")Long id,
                              @RequestParam(name = "title")String title,
                              @RequestParam(name = "text")String text){
        Post post = postService.getOne(id);
        if (!title.isEmpty()) post.setTitle(title);
        if (!text.isEmpty()) post.setText(text);
        postService.save(post);
        return "redirect:/allMyPosts";
    }

    @GetMapping("/editComment/{id}")
    private String myComment(@PathVariable(name = "id")Long id, Model model){
        Comment comment = commentService.getOne(id);
        model.addAttribute("comment", comment);
        return "editThisComment";
    }

    @PostMapping("/editComment/{id}")
    private String editMyComment(@PathVariable(name = "id")Long id,
                                 @RequestParam(name = "text")String text){
        Comment comment = commentService.getOne(id);
        if (!text.isEmpty()) comment.setText(text);
        commentService.save(comment);
        return "redirect:/allMyPosts";
    }
}

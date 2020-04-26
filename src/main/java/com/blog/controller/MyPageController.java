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
import org.springframework.web.multipart.MultipartFile;

import java.util.Collections;
import java.util.List;

@Controller
public class MyPageController {

    @Autowired
    private UserService userService;

    @Autowired
    private PostService postService;

    @Autowired
    private CommentService commentService;

    // --Виводить пости залогіненого користувача--//
    @GetMapping("/myPage")
    public String myPage(Model model){
        User user = userService.getCurrentUser();
        Iterable<Post> posts = postService.getAllByUserId(user.getId());
        Collections.reverse((List<Post>) posts);
        model.addAttribute("posts", posts);
        model.addAttribute("user", user);
        return "myPage";
    }

    @GetMapping("/editProfile")
    public String edit(){
        return "editProfile";
    }

    @PostMapping("/editProfile")
    public String edit(@RequestParam(name = "image")MultipartFile file,
                       @RequestParam(name = "secondName")String secondName,
                       @RequestParam(name = "firstName")String firstName,
                       Model model){
        User user = userService.getCurrentUser();
        userService.editUser(user, file);
        if(!firstName.equals("")) user.setFirstName(firstName);
        if(!secondName.equals("")) user.setSecondName(secondName);
        userService.save(user);
        return "redirect:/myPage";
    }


    @GetMapping("/allMyPosts")
    private String showPosts(Model model){
        User user = userService.getCurrentUser();
        Iterable<Post> posts = postService.getAllByUserId(user.getId());
        Collections.reverse((List<Post>) posts);
        model.addAttribute("posts", posts);
        List<Comment> comments = commentService.getAllByUserId(user.getId());
        model.addAttribute("comments", comments);
        return "allMyPosts";
    }

    @PostMapping("/myPostsDelete/{id}")
    public String myPostsDelete(@PathVariable(name = "id") Long id){
        postService.delete(id);
        return "redirect:/allMyPosts";
    }

    @PostMapping("/myCommentsDelete/{id}")
    public String myCommentsDelete(@PathVariable(name = "id") Long id){
        commentService.delete(id);
        return "redirect:/allMyPosts";
    }



}

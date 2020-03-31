package com.blog.controller;

import com.blog.entity.Post;
import com.blog.entity.User;
import com.blog.service.PostService;
import com.blog.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class MyPageController {

    @Autowired
    private UserService userService;

    @Autowired
    private PostService postService;

    // --Виводить пости залогіненого користувача--//
    @GetMapping("/myPage")
    public String myPage(Model model){
        User user = userService.getCurrentUser();
        Iterable<Post> posts = postService.getAllByUserId(user.getId());
        model.addAttribute("posts", posts);
        model.addAttribute("user", user);
        return "myPage";
    }

    @GetMapping("/editProfile")
    public String edit(){
        return "editProfile";
    }

    @PostMapping("/editProfile")
    public String edit(@RequestParam(name = "image")MultipartFile file, Model model){
        User user = userService.getCurrentUser();
        userService.editUser(user, file);
        return "redirect:/myPage";
    }



}

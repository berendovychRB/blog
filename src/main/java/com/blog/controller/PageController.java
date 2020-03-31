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

@Controller
public class PageController {

    @Autowired
    private PostService postService;

    @Autowired
    private UserService userService;
 //Виводить пости шуканого юзера
    @GetMapping("/page/{userId}")
    public String page(@PathVariable(name = "userId")Long id, Model model){
        User user = userService.getOne(id);
        Iterable<Post> posts = postService.getAllByUserId(id);
        model.addAttribute("posts", posts);
        model.addAttribute("user",user);
        return "page";
    }

}

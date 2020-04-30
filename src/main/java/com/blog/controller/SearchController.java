package com.blog.controller;

import com.blog.entity.User;
import com.blog.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SearchController {

    @Autowired
    private UserService userService;

    @GetMapping("/search")
    public String search(Model model){
        return "search";
    }

    //Пошук постів за ніком юзера
    @PostMapping("/search")
    public String searchUser(@RequestParam String nickName, Model model){
        User user = userService.getByNickName(nickName);
        if(user != null){
        return "redirect:/page/" + user.getId();
        }
        return "pageNotFound";
    }
}

package com.blog.controller;

import com.blog.entity.User;
import com.blog.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class FriendController {

    @Autowired
    private UserService userService;

    @GetMapping("/friends")
    public String friends(Model model){
        User currentUser = userService.getCurrentUser();
        List<User> friends = userService.getAllFriendsByUserId(currentUser);
        model.addAttribute("friends", friends);
        return "friends";
    }

    @PostMapping("/addToFriends/{id}")
    public String addToFriends(@PathVariable(name = "id")Long id){
        User user = userService.getOne(id);
        user.setFriended(userService.addToFriends(user));
        return "redirect:/page/" + id;
    }

    @PostMapping("/deleteFromFriends/{id}")
    public String deleteFromUser(@PathVariable(name = "id")Long id){
        User user = userService.getOne(id);
        userService.deleteFromFriends(user);
        return "redirect:/friends";
    }



}

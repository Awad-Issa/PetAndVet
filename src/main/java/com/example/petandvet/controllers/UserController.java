package com.example.petandvet.controllers;

import com.example.petandvet.models.User;
import com.example.petandvet.services.UserService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
@AllArgsConstructor
public class UserController {
    private final UserService userServ;
    @GetMapping("/user/{id}/delete")
    public String deleteUser(@PathVariable("id") Long id){
        User user = userServ.findUserById(id);
        userServ.deleteUser(user);
        return "redirect:/";
    }
}

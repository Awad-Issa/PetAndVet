package com.example.petandvet.controllers;

import com.example.petandvet.models.User;
import com.example.petandvet.services.UserService;
import jakarta.servlet.http.HttpSession;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
    @GetMapping("/user")
    public String showUser(Model model, HttpSession session){
        if (session.getAttribute("user_id") == null) {
            return "redirect:/";
        }
        User user = userServ.findUserById((Long) session.getAttribute("user_id"));
        model.addAttribute("user", user);
        return "profilePage.jsp";
    }
}

package com.example.petandvet.controllers;

import com.example.petandvet.models.Pet;
import com.example.petandvet.models.User;
import com.example.petandvet.services.PetService;
import com.example.petandvet.services.UserService;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@AllArgsConstructor
public class PetController {
    private final PetService petServ;
    private final UserService userServ;

    /**
     * this route renders the dashboard of the logged user
     * we are passing the id of the logged user to get all the pets in their region
     */
    @GetMapping("/pets")
    public String home(Model model, HttpSession session) {
        if (session.getAttribute("user_id") == null) {
            return "redirect:/";
        }
        User user = userServ.findUserById((Long) session.getAttribute("user_id"));
        model.addAttribute("user", user);
        model.addAttribute("pets", petServ.getPetsByLocation(user.getLocation()));
        return "pets.jsp";
    }

    /**
     * this route renders the form to create a pet post
     * we are passing the id of the logged user to set it as the creator of the pet post
     */
    @GetMapping("/pets/new")
    public String newPet(HttpSession session, Model model, @ModelAttribute("pet") Pet pet) {
        if (session.getAttribute("user_id") == null) {
            return "redirect:/";
        }
        model.addAttribute("user_id", session.getAttribute("user_id"));
        return "newPet.jsp";
    }

    /**
     * this route is the action of the form to create a pet post
     */
    @PostMapping("/pets/new")
    public String createPet(HttpSession session, @Valid @ModelAttribute("pet") Pet pet, BindingResult result) {
        if (session.getAttribute("user_id") == null) {
            return "redirect:/";
        }
        if (result.hasErrors()) {
            return "newPet.jsp";
        }
        petServ.createPet(pet);
        return "pets.jsp";
    }
}

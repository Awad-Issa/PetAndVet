package com.example.petandvet.controllers;

import com.example.petandvet.models.Pet;
import com.example.petandvet.models.User;
import com.example.petandvet.services.BreedService;
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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@AllArgsConstructor
public class PetController {
    private final PetService petServ;
    private final UserService userServ;
    private final BreedService breedServ;

    /**
     * this route renders the dashboard of the logged user
     * we are passing the id of the logged user to get all the pets in their region
     */
    @GetMapping("/home")
    public String home(
            Model model,
            HttpSession session
    ) {
        if (session.getAttribute("user_id") == null) {
            return "redirect:/";
        }
        User user = userServ.findUserById((Long) session.getAttribute("user_id"));
        model.addAttribute("user", user);
        model.addAttribute("pets", petServ.getPetsByLocation(user.getLocation()));
        return "homePage.jsp";
    }

    /**
     * this route renders the form to create a pet post
     * we are passing the id of the logged user to set it as the creator of the pet post
     */
    @GetMapping("/pets/new")
    public String newPet(
            HttpSession session,
            Model model, @ModelAttribute("pet") Pet pet
    ) {
        if (session.getAttribute("user_id") == null) {
            return "redirect:/";
        }
        model.addAttribute("user_id", session.getAttribute("user_id"));
        model.addAttribute("breeds", breedServ.getAllBreeds());
        return "newPet.jsp";
    }

    /**
     * this route is the action of the form to create a pet post
     */
    @PostMapping("/pets/new")
    public String createPet(
            HttpSession session,
            @Valid @ModelAttribute("pet") Pet pet,
            BindingResult result
    ) {
        if (session.getAttribute("user_id") == null) {
            return "redirect:/";
        }
        if (result.hasErrors()) {
            return "newPet.jsp";
        }
        petServ.createPet(pet);

        return "redirect:/";
    }

    /**
     * this route renders the details of a pet post
     */
    @GetMapping("/pets/{id}")
    public String showPet(
            HttpSession session,
            Model model,
            @PathVariable("id") Long id
    ) {
        if (session.getAttribute("user_id") == null) {
            return "redirect:/";
        }
        model.addAttribute("pet", petServ.getPetById(id));
        return "showPet.jsp";
    }

    /**
     * this route renders the form to edit a pet post
     */
    @GetMapping("/pets/{id}/edit")
    public String editPet(
            HttpSession session,
            Model model,
            @ModelAttribute("pet") Pet pet
    ) {
        if (session.getAttribute("user_id") == null) {
            return "redirect:/";
        }
        model.addAttribute("user", userServ.findUserById((Long) session.getAttribute("user_id")));
        model.addAttribute("pet", petServ.getPetById(pet.getId()));
        return "editPet.jsp";
    }

    @PostMapping("/pets/{id}/edit")
    public String updatePet(
            HttpSession session,
            @Valid @ModelAttribute("pet") Pet pet,
            BindingResult result
    ) {
        if (session.getAttribute("user_id") == null) {
            return "redirect:/";
        }
        if (result.hasErrors()) {
            return "editPet.jsp";
        }
        petServ.updatePet(pet);
        return "redirect:/pets";
    }

    @GetMapping("/pets/{id}/delete")
    public String deletePet(
            HttpSession session,
            @PathVariable("id") Long id
    ) {
        if (session.getAttribute("user_id") == null) {
            return "redirect:/";
        }
        petServ.deletePet(id);
        return "redirect:/pets";
    }

    /**
     * find all pets by user
     * */
    @GetMapping("/pets/user")
    public String showUserPets(
            HttpSession session,
            Model model
    ) {
        if (session.getAttribute("user_id") == null) {
            return "redirect:/";
        }
        User user = userServ.findUserById((Long) session.getAttribute("user_id"));
        model.addAttribute("user", user);
        model.addAttribute("pets", user.getPets());
        return "userPets.jsp";
    }
}

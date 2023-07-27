package com.example.petandvet.controllers;


import com.example.petandvet.models.Pet;
import com.example.petandvet.models.Product;
import com.example.petandvet.services.ProductService;
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

@AllArgsConstructor
@Controller
public class ProductController {

    private final ProductService productServ;

    @GetMapping("product/new")
    public String newProduct(
            HttpSession session,
            Model model, @ModelAttribute("product")Product product
            ) {
        if (session.getAttribute("user_id") == null) {
            return "redirect:/";
        }

        return "newProduct.jsp";
    }

    @PostMapping("/product/new")
    public String createProduct(
            HttpSession session,
            @Valid @ModelAttribute("product") Product product,
            BindingResult result
    ) {
        if (session.getAttribute("user_id") == null) {
            return "redirect:/";
        }
        if (result.hasErrors()) {
            return "newProduct.jsp";
        }
        productServ.createProduct(product);

        return "redirect:/pets";
    }

    @GetMapping("/product/{id}/edit")
    public String newProductPage(
            HttpSession session,
            Model model, @ModelAttribute("product")
            Product product,@PathVariable("id")Long id
    ) {
        if (session.getAttribute("user_id") == null) {
            return "redirect:/";
        }
        return "editProduct.jsp";
    }

    @PostMapping("/product/{id}/edit")
    public String editProduct(
            HttpSession session,
            @Valid @ModelAttribute("product") Product product,
            BindingResult result
    ) {
        if (session.getAttribute("user_id") == null) {
            return "redirect:/";
        }
        if (result.hasErrors()) {
            return "editProduct.jsp";
        }
        productServ.createProduct(product);

        return "redirect:/pets";
    }

}

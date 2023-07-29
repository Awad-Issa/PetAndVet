package com.example.petandvet.controllers;


import com.example.petandvet.models.Product;
import com.example.petandvet.services.BreedService;
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
  private final BreedService breedServ;

  @GetMapping("product/new")
  public String newProduct(
      HttpSession session,
      Model model, @ModelAttribute("product") Product product
  ) {
    if (session.getAttribute("user_id") == null) {
      return "redirect:/";
    }
    model.addAttribute("breeds", (breedServ.getAllBreeds()));
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
      @ModelAttribute("product")
      Product product
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

  @GetMapping("product/{id}/delete")
  public String deleteProduct(@PathVariable("id") Long id, HttpSession session) {
    if (session.getAttribute("user_id") == null) {
      return "redirect:/";
    }
    productServ.deleteProduct(id);
    return "redirect:/pets";
  }

  @GetMapping("{breed}/products")
  public String getBreedProducts(
      HttpSession session,
      Model model,
      @PathVariable("breed") String name
  ) {
    if (session.getAttribute("user_id") == null) {
      return "redirect:/";
    }
    model.addAttribute("breed", breedServ.getBreedByName(name));
    return "breedProducts.jsp";
  }

}

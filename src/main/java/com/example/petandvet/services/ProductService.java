package com.example.petandvet.services;

import com.example.petandvet.models.Breed;
import com.example.petandvet.models.Product;
import com.example.petandvet.repositories.BreedRepository;
import com.example.petandvet.repositories.ProductRepository;
import java.util.List;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

@AllArgsConstructor
@Service
public class ProductService {

  private final ProductRepository productRepo;
  private final BreedRepository breedRepo;

  public void createProduct(Product product) {
    productRepo.save(product);
  }

  public void deleteProduct(Long id) {
    productRepo.deleteById(id);
  }

  public List<Product> getProductsByBreed(Breed breed) {
    return breed.getProducts();
  }

//    public List<Product> getAllProducts(Product product){
//        return (List<Product>) productRepo.findAll();
//    }


}

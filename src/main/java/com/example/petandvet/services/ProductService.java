package com.example.petandvet.services;

import com.example.petandvet.models.Product;
import com.example.petandvet.repositories.ProductRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

@AllArgsConstructor
@Service
public class ProductService {

    private final ProductRepository productRepo;

    public void createProduct(Product product){
        productRepo.save(product);
    }

    public void deleteProduct(Long id){
        productRepo.deleteById(id);
    }



}

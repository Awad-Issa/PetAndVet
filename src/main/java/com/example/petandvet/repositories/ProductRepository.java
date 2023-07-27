package com.example.petandvet.repositories;

import com.example.petandvet.models.Product;
import org.springframework.data.repository.CrudRepository;

public interface ProductRepository extends CrudRepository<Product, Long> {
}

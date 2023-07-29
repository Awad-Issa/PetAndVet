package com.example.petandvet.services;

import com.example.petandvet.models.Breed;
import com.example.petandvet.models.Product;
import com.example.petandvet.repositories.BreedRepository;
import java.util.List;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor
public class BreedService {

  private final BreedRepository breedRepo;

  public List<Breed> getAllBreeds() {
    return (List<Breed>) breedRepo.findAll();
  }

  public Breed getBreedById(Long id) {
    return breedRepo.findById(id).orElse(null);
  }

  public Breed createBreed(Breed breed) {
    return breedRepo.save(breed);
  }

  public Breed updateBreed(Breed breed) {
    return breedRepo.save(breed);
  }

  public void deleteBreed(Long id) {
    breedRepo.deleteById(id);
  }

  public List<Product> getProductsByBreed(Breed breed) {
    return breed.getProducts();
  }

  public Breed getBreedByName(String name) {
    return breedRepo.getBreedByName(name);
  }
}

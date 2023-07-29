package com.example.petandvet.repositories;

import com.example.petandvet.models.Breed;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BreedRepository extends CrudRepository<Breed, Long> {

  public Breed getBreedByName(String name);
}
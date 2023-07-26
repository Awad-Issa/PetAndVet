package com.example.petandvet.repositories;

import com.example.petandvet.models.Pet;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PetRepository extends CrudRepository<Pet, Long> {
    List<Pet> findByLocation(String location);
}
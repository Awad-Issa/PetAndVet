package com.example.petandvet.repositories;

import com.example.petandvet.models.Pet;
import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PetRepository extends CrudRepository<Pet, Long> {

  List<Pet> findByLocation(String location);
}
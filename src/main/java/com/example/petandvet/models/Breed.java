package com.example.petandvet.models;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Entity
@Table(name="breeds")
@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class Breed {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    private String name;

    @OneToMany(mappedBy = "breed", fetch = FetchType.LAZY)
    private List<Pet> pets;

    @OneToMany(mappedBy = "breed", fetch = FetchType.LAZY)
    private List<Product> products;
}

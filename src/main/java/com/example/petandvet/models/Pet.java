package com.example.petandvet.models;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Entity
@Table(name="pets")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class Pet {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank(message = "Name is required!")
    @Size(min = 3, max = 30, message = "Name must be between 3 and 30 characters")
    private String name;

    @NotNull(message = "Age is required!")
    private Integer age;

    @Size(min = 10, message = "details must be at least 10 characters")
    private String description;

    @NotBlank(message = "Gender is required!")
    private String gender;

    @NotBlank(message = "Location is required!")
    private String location;

    @NotBlank(message = "Status is required!")
    private String status;

    private String image;

    @Column(updatable = false)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date createdAt;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date updatedAt;

    @PrePersist
    protected void onCreate() {
        this.createdAt = new Date();
        this.updatedAt = new Date();
        this.status = "Available";
    }

    @PreUpdate
    protected void onUpdate() {
        this.updatedAt = new Date();
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="breed_id")
    private Breed breed;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="user_id")
    private User user;
}

package com.example.petandvet.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "pets")
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
  @JoinColumn(name = "breed_id")
  private Breed breed;

  @ManyToOne(fetch = FetchType.LAZY)
  @JoinColumn(name = "user_id")
  private User user;
}

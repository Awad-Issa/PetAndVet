package com.example.petandvet.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import java.util.Date;
import java.util.List;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "users")
public class User {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;

  @NotBlank(message = "Username is required!")
  @Size(min = 3, max = 30, message = "Username must be between 3 and 30 characters")
  private String userName;

  @NotBlank(message = "Email is required!")
  @Email(message = "Please enter a valid email!")
  private String email;

  @NotBlank(message = "Password is required!")
  @Size(min = 8, max = 128, message = "Password must be between 8 and 128 characters")
  private String password;

  @Transient
  @NotBlank(message = "Confirm Password is required!")
  @Size(min = 8, max = 128, message = "Confirm Password must be between 8 and 128 characters")
  private String confirm;

  @NotBlank(message = "Phone Number is required!")
  private String phoneNumber;

  @NotBlank(message = "Location is required!")
  private String location;

  @Column(updatable = false)
  @DateTimeFormat(pattern = "yyyy-MM-dd")
  private Date createdAt;

  @DateTimeFormat(pattern = "yyyy-MM-dd")
  private Date updatedAt;

  @PrePersist
  protected void onCreate() {
    this.createdAt = new Date();
    this.updatedAt = new Date();
  }

  @PreUpdate
  protected void onUpdate() {
    this.updatedAt = new Date();
  }

  @OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
  private List<Pet> pets;

  @OneToOne(mappedBy = "user", fetch = FetchType.LAZY)
  private Cart cart;
}
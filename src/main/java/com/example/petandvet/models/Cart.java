//package com.example.petandvet.models;
//
//import jakarta.persistence.Column;
//import jakarta.persistence.Entity;
//import jakarta.persistence.GeneratedValue;
//import jakarta.persistence.GenerationType;
//import jakarta.persistence.Id;
//import jakarta.persistence.PrePersist;
//import jakarta.persistence.PreUpdate;
//import jakarta.persistence.Table;
//import java.util.Date;
//import lombok.AllArgsConstructor;
//import lombok.Getter;
//import lombok.NoArgsConstructor;
//import lombok.Setter;
//import org.springframework.format.annotation.DateTimeFormat;
//
//@Entity
//@Table(name = "carts")
//@Setter
//@Getter
//@AllArgsConstructor
//@NoArgsConstructor
//public class Cart {
//
//  @Id
//  @GeneratedValue(strategy = GenerationType.IDENTITY)
//  private Long id;
//
//  @Column(updatable = false)
//  @DateTimeFormat(pattern = "yyyy-MM-dd")
//  private Date createdAt;
//
//  @DateTimeFormat(pattern = "yyyy-MM-dd")
//  private Date updatedAt;
//
//  public Cart(Long userId) {
//  }
//
//  @PrePersist
//  protected void onCreate() {
//    this.createdAt = new Date();
//    this.updatedAt = new Date();
//  }
//
//  @PreUpdate
//  protected void onUpdate() {
//    this.updatedAt = new Date();
//  }
////
////  @OneToOne(fetch = FetchType.LAZY)
////  @JoinColumn(name = "user_id")
////  private User user;
//
//
//}

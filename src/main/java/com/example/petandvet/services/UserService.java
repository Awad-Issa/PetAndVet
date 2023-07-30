package com.example.petandvet.services;


import com.example.petandvet.models.LoginUser;
import com.example.petandvet.models.User;
import com.example.petandvet.repositories.UserRepository;
import java.util.Optional;
import lombok.AllArgsConstructor;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

@AllArgsConstructor
@Service
public class UserService {

  private UserRepository userRepo;

  public User findUserById(Long id) {
    return userRepo.findById(id).orElse(null);
  }

  public User register(User newUser, BindingResult result) {
    //.matches("^[a-zA-Z]*$")
    if (!(newUser.getUserName()).matches("^[a-zA-Z]*$")) {
      result.rejectValue("userName", "Invalid", "Use Letters only!");
    }
    if (userRepo.findByEmail(newUser.getEmail()).isPresent()) {
      result.rejectValue("email", "Unique", "This is a used email! Try another one.");
    }
    if (!newUser.getPassword().equals(newUser.getConfirm())) {
      result.rejectValue("confirm", "Matches", "Confirm password must match password.");
    }
    if (result.hasErrors()) {
      return null;
    } else {
      String hashedPW = BCrypt.hashpw(newUser.getPassword(), BCrypt.gensalt());
      newUser.setPassword(hashedPW);
      return userRepo.save(newUser);
    }
  }

  public User login(LoginUser newLoginObject, BindingResult result) {
    if (result.hasErrors()) {
      return null;
    }
    Optional<User> potentialUser = userRepo.findByEmail(newLoginObject.getEmail());
    if (potentialUser.isEmpty()) {
      result.rejectValue("email", "Unique", "No such email!");
      return null;
    }
    User user = potentialUser.get();
    if (!BCrypt.checkpw(newLoginObject.getPassword(), user.getPassword())) {
      result.rejectValue("password", "Matches", "Wrong Password!");
    }
    if (result.hasErrors()) {
      return null;
    } else {
      return user;
    }
  }

  public void  deleteUser(User user){
    userRepo.delete(user);
  }

}
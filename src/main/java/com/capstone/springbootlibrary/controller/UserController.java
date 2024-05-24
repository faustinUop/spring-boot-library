package com.capstone.springbootlibrary.controller;

import com.capstone.springbootlibrary.dao.MessageRepository;
import com.capstone.springbootlibrary.entity.Message;
import com.capstone.springbootlibrary.entity.User;
import com.capstone.springbootlibrary.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@CrossOrigin("https://localhost:3000")
@RestController
@RequestMapping("/api/users")
public class UserController {

    private final UserService userService;
    private final MessageRepository messageRepository;

    @Autowired
    public UserController(UserService userService, MessageRepository messageRepository) {
        this.userService = userService;
        this.messageRepository = messageRepository;
    }

    @PostMapping
    public ResponseEntity<String> createUser(@RequestBody User user) {
        userService.saveUser(user);
        Message message = new Message("New user approval", "Please approve new user");
        message.setUserEmail(user.getEmail());
        messageRepository.save(message);
        return new ResponseEntity<>("Your request has been submitted. Please wait 1 to 2 days for UR library approval.", HttpStatus.CREATED);
    }
}

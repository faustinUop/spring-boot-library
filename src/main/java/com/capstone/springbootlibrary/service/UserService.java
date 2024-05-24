package com.capstone.springbootlibrary.service;

import com.capstone.springbootlibrary.dao.MessageRepository;
import com.capstone.springbootlibrary.dao.UserRepository;
import com.capstone.springbootlibrary.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    MessageRepository messageRepository;

    private final UserRepository userRepository;

    @Autowired
    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public User saveUser(User user) {

        return userRepository.save(user);
    }
}

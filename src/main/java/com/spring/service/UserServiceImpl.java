package com.spring.service;

import com.spring.model.User;
import com.spring.repository.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    private final UserRepository userRepository;
    private final BCryptPasswordEncoder passwordEncoder;

    @Autowired
    public UserServiceImpl(UserRepository userRepository, BCryptPasswordEncoder passwordEncoder) {
        this.userRepository = userRepository;
        this.passwordEncoder = passwordEncoder;
    }

    @Override
    public void registerNewUser(String fullname, String email, String password) {
        // Check if the email is already registered 

        // Create a new user entity
        User newUser = new User();
        newUser.setName(fullname);
        newUser.setEmail(email);

        // Encode the password before saving it
        String encodedPassword = passwordEncoder.encode(password);
        newUser.setPassword(encodedPassword);

        // Save the user to the database
        userRepository.save(newUser);
    }

    @Override
    public User getUserByEmail(String email) {
        // Retrieve a user by email from the database
        return userRepository.findByEmail(email);
    }
}

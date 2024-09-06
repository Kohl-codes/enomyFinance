package com.spring.service;

import com.spring.model.User;

public interface UserService {
    void registerNewUser(String fullname, String email, String password);
    User getUserByEmail(String email);
}

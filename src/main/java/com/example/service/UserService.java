package com.example.service;

import com.example.entity.User;

import java.util.List;

public interface UserService {

    List<User> findAll();

    User findById(Long id);

    void save(User user);

    void deleteById(Long id);
}

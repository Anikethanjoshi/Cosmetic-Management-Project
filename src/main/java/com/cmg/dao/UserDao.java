package com.cmg.dao;

import java.util.List;

import com.cmg.dto.User;

public interface UserDao {
	void addUser(User user);

    void updateUser(User user);

    void deleteUser(int userId);

    User findById(int userId);

    List<User> findAll();

    User findByMailAndPassword(String email, String password);

  
}

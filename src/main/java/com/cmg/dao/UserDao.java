package com.cmg.dao;

import java.util.List;

import com.cosmetics.dto.User;

public interface UserDao {
	int addUser(User user);

    int updateUser(User user);

    int deleteUser(int userId);

    User findById(int userId);

    List<User> findAll();

    User findByMailAndPassword(String email, String password);

    User findByMail(String email);
}

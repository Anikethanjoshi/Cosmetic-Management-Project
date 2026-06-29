package com.cmg.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cmg.dao.UserDao;
import com.cmg.utility.Connector;
import com.cosmetics.dto.User;

public class UserDaoImpl implements UserDao {
	private Connection con;
public UserDaoImpl() {
	this.con=Connector.requestConnection();
}
	
	@Override

	public void addUser(User user) {

		String sql = "INSERT INTO users(username,email,mobile_no,address,pincode,password) VALUES(?,?,?,?,?,?)";

		try {

			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, user.getUsername());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getMobileNo());
			ps.setString(4, user.getAddress());
			ps.setString(5, user.getPincode());
			ps.setString(6, user.getPassword());

			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	@Override
	public void updateUser(User user) {
		String sql = "UPDATE users SET username=?, email=?, mobile_no=?, address=?, pincode=?, password=? WHERE user_id=?";

		try {

			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, user.getUsername());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getMobileNo());
			ps.setString(4, user.getAddress());
			ps.setString(5, user.getPincode());
			ps.setString(6, user.getPassword());
			ps.setInt(7, user.getUserId());
			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	@Override
	public void deleteUser(int userId) {
		String sql = "DELETE FROM users WHERE user_id=?";

		try {

			PreparedStatement ps = con.prepareStatement(sql);

			ps.setInt(1, userId);
			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	@Override
	public User findById(int userId) {
		User user = null;
		String sql = "SELECT * FROM users WHERE user_id=?";

		try {

			PreparedStatement ps = con.prepareStatement(sql);

			ps.setInt(1, userId);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {

				user = new User();

				user.setUserId(rs.getInt("user_id"));
				user.setUsername(rs.getString("username"));
				user.setEmail(rs.getString("email"));
				user.setMobileNo(rs.getString("mobile_no"));
				user.setAddress(rs.getString("address"));
				user.setPincode(rs.getString("pincode"));
				user.setPassword(rs.getString("password"));

			}

		} catch (SQLException e) {
			e.printStackTrace();

		}
		return user;

	}

	@Override
	public List<User> findAll() {
		String sql = "SELECT * FROM users";

		List<User> users = new ArrayList<User>();
		User user = null;
		try {

			PreparedStatement ps = con.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				user = new User();

				user.setUserId(rs.getInt("user_id"));
				user.setUsername(rs.getString("username"));
				user.setEmail(rs.getString("email"));
				user.setMobileNo(rs.getString("mobile_no"));
				user.setAddress(rs.getString("address"));
				user.setPincode(rs.getString("pincode"));
				user.setPassword(rs.getString("password"));

				users.add(user);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return users;
	}

	@Override
	public User findByMailAndPassword(String email, String password) {
		String sql = "SELECT * FROM users WHERE email=? AND password=?";
		User user = null;
		try {

			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, email);
			ps.setString(2, password);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {

				user = new User();

				user.setUserId(rs.getInt("user_id"));
				user.setUsername(rs.getString("username"));
				user.setEmail(rs.getString("email"));
				user.setMobileNo(rs.getString("mobile_no"));
				user.setAddress(rs.getString("address"));
				user.setPincode(rs.getString("pincode"));
				user.setPassword(rs.getString("password"));

			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return user;
	}

}

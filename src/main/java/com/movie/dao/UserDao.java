package com.movie.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.movie.mapper.UserMapper;
import com.movie.model.User;

@Repository
public class UserDao {
	
	@Autowired
	private UserMapper mapper;

	public User findByEmail(String email) {
		return mapper.findByEmail(email);
	}

	public void registerUser(User user) {
		user.setPhoto("default.jpg");
		mapper.insert(user);
	}

	public int userCount() {
		return mapper.usercount();
	}
	
	public List<User> findAll(){
		return mapper.findAll();
	}

	public User findById(int id) {
		return mapper.findById(id);
	}

	public void delete(int id) {
		mapper.delete(id);
	}

	public void update(User u) {
		mapper.update(u);
	}

}

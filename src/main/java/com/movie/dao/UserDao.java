package com.movie.dao;

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

}

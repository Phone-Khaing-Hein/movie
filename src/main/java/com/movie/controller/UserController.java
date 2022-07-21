package com.movie.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.movie.dao.UserDao;

@Controller
public class UserController {

	@Autowired
	private UserDao dao;
	
}

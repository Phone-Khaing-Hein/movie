package com.movie.model;

import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Repository
@AllArgsConstructor
@NoArgsConstructor
@Data
public class User {

	private int id;
	private String name;
	private String email;
	private String password;
	private MultipartFile photoFile;
	private String photo;
	private Role role;
	private String cpassword;
	
	public enum Role{
		Admin, Premium, Free
	}
}

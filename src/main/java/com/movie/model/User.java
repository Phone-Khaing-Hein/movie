package com.movie.model;

import org.springframework.stereotype.Repository;

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
	private String photo;
	private Role role;
	
	public enum Role{
		Admin, Premium, Free
	}
}

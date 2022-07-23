package com.movie.model;

import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Repository
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Movie {
	
	private Integer id;
	private String name;
	private String description;
	private String releaseDate;
	private String trailer;
	private MultipartFile posterFile;
	private String poster;
	private Integer episodes;
	private String normalDl;
	private String premiumDl;
}

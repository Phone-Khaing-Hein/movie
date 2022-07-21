package com.movie.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.movie.mapper.MovieMapper;
import com.movie.model.Movie;

@Repository
public class MovieDao {
	
	@Autowired
	private MovieMapper mapper;

	public List<Movie> findAll() {
		return mapper.findAll();
	}

	public Movie findById(String id) {
		return mapper.findById(Integer.parseInt(id));
	}

	public int save(Movie m) {
		mapper.insert(m);
		return mapper.findMovieId(m);
	}
}

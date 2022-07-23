package com.movie.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.movie.mapper.GenreMapper;
import com.movie.model.Genre;

@Repository
public class GenreDao {

	@Autowired
	private GenreMapper mapper;
	
	public void addGenre(Genre name) {
		mapper.insertGenre(name);
	}

	public Genre findById(String id) {
		return mapper.findById(Integer.parseInt(id));
	}

	public List<Genre> findAll() {
		return mapper.findAll();
	}
	
	public void deleteGenre(int id) {
		mapper.deleteGenre(id);
	}
	
	public void update(Genre g) {
		mapper.updateGenre(g);
	}
}

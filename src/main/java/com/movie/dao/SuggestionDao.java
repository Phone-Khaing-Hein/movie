package com.movie.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.movie.mapper.SuggestionMapper;
import com.movie.model.Suggestion;

@Repository
public class SuggestionDao {

	@Autowired
	private SuggestionMapper mapper;
	
	public void insert(Suggestion s) {
		mapper.addSuggestion(s);
	}
	
	public List<Suggestion> findAll(){
		return mapper.findAll();
	}
	
	public void delete(int id) {
		mapper.deleteSuggestion(id);
	}
}

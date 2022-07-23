package com.movie.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.movie.mapper.MovieMapper;
import com.movie.model.Genre;
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

	public void save(Movie m, String[] genres) {
		mapper.insert(m);
		var id = mapper.findMovieId(m);
		for(var g : genres) {
			mapper.insertGenreWithMovie(id, Integer.parseInt(g));
		}
	}
	
	public int movieCount() {
		return mapper.movieCount();
	}
	
	public int seriesCount() {
		return mapper.seriesCount();
	}
	
	public List<Movie> findAllMovies(){
		return mapper.findAllMovies();
	}
	
	public List<Movie> findAllSeries(){
		return mapper.findAllSeries();
	}

	public List<Movie> findMovies6() {
		return mapper.findMovies6();
	}

	public List<Movie> findSeries6() {
		return mapper.findSeries6();
	}

	public List<Movie> findAll6() {
		return mapper.findAll6();
	}
	
	public List<Genre> genres(int id){
		return mapper.genres(id);
	}
	
	public void delete(int id) {
		mapper.delete(id);
	}

	public void update(Movie m, String[] genres) {
		mapper.update(m);
		mapper.deleteGenres(m.getId());
		for(var g : genres) {
			mapper.insertGenreWithMovie(m.getId(), Integer.parseInt(g));
		}
	}
	
	public List<Movie> searchByGenre(String name){
		return mapper.searchByGenres(name);
	}

	public List<Movie> searchByName(String keyword) {
		return mapper.searchByName("%".concat(keyword).concat("%"));
	}
}

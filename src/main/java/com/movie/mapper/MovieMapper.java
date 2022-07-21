package com.movie.mapper;

import java.util.List;

import org.apache.ibatis.annotations.*;

import com.movie.model.Movie;

@Mapper
public interface MovieMapper {
	
	@Select("select * from movies")
	List<Movie> findAll();
	
	@Select("select * from movies where id = #{id}")
	Movie findById(int id);
	
	@Insert("""
			insert into movies (name, description, release_date, trailer, poster, episodes, normal_dl, premium_dl) values 
			(#{name}, #{description}, #{releaseDate}, #{trailer}, #{poster}, #{episodes}, #{normalDl}, #{premiumDl})
			""")
	void insert(Movie m);
	
	@Select("""
			select id from movies where 
			name = #{name} && description = #{description} && 
			release_date = #{releaseDate} && trailer = #{trailer} && 
			poster = #{poster} && episodes = #{episodes}
			""")
	int findMovieId(Movie m);
}

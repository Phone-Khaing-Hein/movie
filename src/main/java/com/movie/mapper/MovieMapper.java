package com.movie.mapper;

import java.util.List;

import org.apache.ibatis.annotations.*;

import com.movie.model.Genre;
import com.movie.model.Movie;

@Mapper
public interface MovieMapper {
	
	@Select("select * from movies order by id desc")
	List<Movie> findAll();
	
	@Select("select * from movies where episodes = 1 order by id desc")
	List<Movie> findAllMovies();
	
	@Select("select * from movies where episodes != 1 order by id desc")
	List<Movie> findAllSeries();
	
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
	
	@Select("select count(*) from movies where episodes = 1")
	int movieCount();
	
	@Select("select count(*) from movies where episodes != 1")
	int seriesCount();
	
	@Select("select * from movies order by id desc limit 6")
	List<Movie> findAll6();
	
	@Select("select * from movies where episodes = 1 order by id desc limit 6")
	List<Movie> findMovies6();
	
	@Select("select * from movies where episodes != 1 order by id desc limit 6")
	List<Movie> findSeries6();
	
	@Insert("insert into movies_genres values (#{movieId},#{genreId})")
	void insertGenreWithMovie(int movieId, int genreId);
	
	@Select("select g.id,g.name from genres g join movies_genres mg on g.id = mg.genres_id where mg.movies_id = #{id}")
	List<Genre> genres(int id);
	
	@Delete("delete from movies where id = #{id}")
	void delete(int id);

	@Update("""
			update movies set name = #{name}, description = #{description},
						release_date = #{releaseDate}, trailer = #{trailer},
						poster = #{poster}, episodes = #{episodes} where id = #{id}
			""")
	void update(Movie m);

	@Delete("delete from movies_genres where movies_id = #{id}")
	void deleteGenres(Integer id);
	
	@Select("""
			select m.id,m.name,m.description,m.release_date,m.trailer,m.poster,m.episodes,m.normal_dl,m.premium_dl from movies m 
			join movies_genres mg on m.id = mg.movies_id
			join genres g on g.id = mg.genres_id
			where g.name = #{name}
			""")
	List<Movie> searchByGenres(String name);

	@Select("select * from movies where name like #{keyword}")
	List<Movie> searchByName(String keyword);

	@Insert("insert into users_movies value (#{userId}, #{movieId})")
	void addTofav(int userId, int movieId);

	@Select("""
			select m.id,m.name,m.description,m.release_date,m.trailer,m.poster,m.episodes,m.normal_dl,m.premium_dl from movies m 
			join users_movies um on m.id = um.movie_id
			where um.user_id = #{userId}
			""")
	List<Movie> findAllFav(int userId);
}

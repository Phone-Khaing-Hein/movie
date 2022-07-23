package com.movie.mapper;

import java.util.List;

import org.apache.ibatis.annotations.*;

import com.movie.model.Genre;

@Mapper
public interface GenreMapper {

    @Select("select * from genres")
    List<Genre>findAll();

    @Select("select * from genres where id=#{id}")
    Genre findById(int id);

    @Insert("insert into genres (name) values (#{name})")
    void insertGenre(Genre genre);

    @Delete("delete from genres where id=#{id}")
    void deleteGenre(int id);

    @Update("update genres set name=#{name} where id=#{id}")
    void updateGenre(Genre genre);
}

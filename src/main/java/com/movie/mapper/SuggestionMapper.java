package com.movie.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.movie.model.Suggestion;

@Mapper
public interface SuggestionMapper {
    @Select("select s.id,s.feedback,u.id user_id,u.name username from suggestions s left join users u on s.user_id = u.id")
    List<Suggestion>findAll();

    @Insert("insert into suggestions(feedback, user_id) values (#{feedback}, #{userId})")
    void addSuggestion(Suggestion suggestion);

    @Delete("delete from suggestions where id=#{id}")
    void deleteSuggestion(int id);
}
package com.movie.mapper;
import org.apache.ibatis.annotations.*;

import com.movie.model.User;

@Mapper
public interface UserMapper {

	@Select("select * from users where email = #{email}")
	User findByEmail(String email);
}

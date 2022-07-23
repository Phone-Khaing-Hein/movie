package com.movie.mapper;
import java.util.List;

import org.apache.ibatis.annotations.*;

import com.movie.model.User;

@Mapper
public interface UserMapper {

	@Select("select * from users where email = #{email}")
	User findByEmail(String email);
	
	@Select("select * from users")
	List<User> findAll();
	
	@Insert("insert into users (name, email, password, photo) values (#{name}, #{email}, #{password}, #{photo})")
	void insert(User u);

	@Select("select count(*) from users")
	int usercount();

	@Select("select * from users where id = #{id}")
	User findById(int id);

	@Delete("delete from users where id = #{id}")
	void delete(int id);

	@Update("update users set role = #{role} where id = #{id}")
	void update(User u);
}

package com.movie.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.movie.model.Payment;

@Mapper
public interface PaymentMapper {

	@Select("select * from payments")
    List<Payment>findAll();

    @Select("select * from payments where id=#{id}")
    Payment findById(int id);

    @Insert("insert into payments(id,packages,screenshot)values(#{id},#{packages},#{screenshot})")
    void insertPayment(Payment payment);

    @Update("update payments set packages=#{packages},screenshot=#{screenshot} where id=#{id}")
    void updatePayment(Payment payment);

    @Delete("delete from payments where id=#{id}")
    void deletePayment(int id);

    @Select("select count(*) from payments")
	int paymentCount();
}

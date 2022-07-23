package com.movie.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.movie.model.Payment;

@Mapper
public interface PaymentMapper {

	@Select("select * from payments")
    List<Payment>findAll();

    @Select("select * from payments where id=#{id}")
    Payment findById(int id);

    @Insert("insert into payments(packages,screenshot,user_id)values(#{packages},#{screenshot},#{userId})")
    void insertPayment(Payment payment);

    @Select("select count(*) from payments")
	int paymentCount();
}

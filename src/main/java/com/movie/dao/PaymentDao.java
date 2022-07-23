package com.movie.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.movie.mapper.PaymentMapper;

@Repository
public class PaymentDao {

	@Autowired
	private PaymentMapper mapper;
	
	public int paymentCount() {
		return mapper.paymentCount();
	}

}

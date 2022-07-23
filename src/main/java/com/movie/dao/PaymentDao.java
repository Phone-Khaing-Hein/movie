package com.movie.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.movie.mapper.PaymentMapper;
import com.movie.model.Payment;

@Repository
public class PaymentDao {

	@Autowired
	private PaymentMapper mapper;
	
	public int paymentCount() {
		return mapper.paymentCount();
	}
	
	public int add(Payment p) {
		mapper.insertPayment(p);
		return 1;
	}

	public List<Payment> findAll() {
		return mapper.findAll();
	}

	public Payment findById(int id) {
		return mapper.findById(id);
	}

}

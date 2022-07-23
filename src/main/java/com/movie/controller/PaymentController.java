package com.movie.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.movie.mapper.PaymentMapper;
import com.movie.model.Payment;

@Controller
public class PaymentController {
	@Autowired
	PaymentMapper paymentMapper;

	@GetMapping("/admin/payment/list")
	public String paymentManagement(Model model) {
		model.addAttribute("paymentList", paymentMapper.findAll());
		return "payment-management";
	}

	@GetMapping("/setupAddPayment")
	public String setupAddPayment(Model model) {
		return "payment";
	}

	@PostMapping("/addPayment")
	public String addPayment(@ModelAttribute Payment payment, Model m, RedirectAttributes redirect) {
		if (isEmpty(payment.getPackages())) {
			m.addAttribute("error1", "Package is required!");
		}

		if (isEmpty(payment.getScreenshot())) {
			m.addAttribute("error2", "Screenshot is required!");
		}

		if (!isEmpty(payment.getPackages()) && !isEmpty(payment.getScreenshot())) {
			paymentMapper.insertPayment(payment);
		}
		m.addAttribute("payment", new Payment());
		return "payment";
	}

	private boolean isEmpty(String str) {
		return str == null || str.isEmpty() || str.isBlank();
	}

	@GetMapping("/setupUpdatePayment")
	public String setupUpdatePayment(@RequestParam("selectedId") int id, Model m) {
		Payment payment = paymentMapper.findById(id);
		m.addAttribute("payment", payment);
		return "payment-management";
	}

	@PostMapping("/updatePayment")
	public String updatePayment(@ModelAttribute Payment payment, Model m) {
		if (isEmpty(payment.getPackages())) {
			m.addAttribute("error1", "Package is required!");
		}

		if (isEmpty(payment.getScreenshot())) {
			m.addAttribute("error2", "Screenshot is required!");
		}

		if (!isEmpty(payment.getPackages()) && !isEmpty(payment.getScreenshot())) {
			paymentMapper.updatePayment(payment);
		}
		return "payment-management";
	}

	@GetMapping(value = "/deletePayment")
	public String deletePayment(@RequestParam("selectedId") int id, Model m) {
		paymentMapper.deletePayment(id);
		return "payment-management";
	}

}

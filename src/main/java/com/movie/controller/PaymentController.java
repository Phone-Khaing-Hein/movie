package com.movie.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Random;

import javax.servlet.annotation.MultipartConfig;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.movie.dao.PaymentDao;
import com.movie.dao.UserDao;
import com.movie.model.Payment;
import com.movie.model.User;

@Controller
@MultipartConfig
public class PaymentController {
	@Autowired
	PaymentDao dao;
	
	@Autowired
	UserDao dao2;

	@GetMapping("/admin/payment/list")
	public String paymentManagement(Model model) {
		var paymentList = dao.findAll();
		for(var p : paymentList) {
			p.setUsername(dao2.findById(p.getUserId()).getName());
		}
		model.addAttribute("paymentList", paymentList);
		
		return "payment-management";
	}

	@GetMapping("/payment/add")
	public String payment() {
		return "payment";
	}

	@PostMapping("/payment/add")
	public String addPayment(@ModelAttribute Payment payment, @RequestParam String username, @RequestParam String email, Model m, RedirectAttributes redirect) throws IllegalStateException, IOException {
		if (isEmpty(payment.getPackages())) {
			m.addAttribute("error1", "Package is required!");
		}

		if (payment.getScreenshotFile() == null) {
			m.addAttribute("error2", "Screenshot is required!");
		}

		if (!isEmpty(payment.getPackages()) && payment.getScreenshotFile() != null) {
			var random = new Random();
			payment.setScreenshot("payment%d.jpg".formatted(random.nextInt()));
			var name = payment.getScreenshot();
			uploadFile(payment.getScreenshotFile(), name);
			dao.add(payment);
			redirect.addFlashAttribute("message", "Wait for 24hrs admin will approve your payment");
			return "redirect:/payment/add";
		}
		return "payment";
	}

	private boolean isEmpty(String str) {
		return str == null || str.isEmpty() || str.isBlank();
	}
	
	public void uploadFile(MultipartFile file, String posterName) throws IllegalStateException, IOException {
		file.transferTo(
				new File("D:\\OJT assignment\\movie\\src\\main\\webapp\\image\\payment\\%s".formatted(posterName)));
	}
}

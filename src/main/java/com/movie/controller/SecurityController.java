package com.movie.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.movie.dao.UserDao;
import com.movie.model.User;

@Controller
public class SecurityController {
	
	@Autowired
	private UserDao dao;
	
	@GetMapping("/sign-up")
	public ModelAndView usersignUp() {
		return new ModelAndView("signUp", "user", new User());
	}
	
	@GetMapping("/login")
	public ModelAndView userLogin() {
		return new ModelAndView("login", "user", new User());
	}
	
	@GetMapping("/admin/login")
	public ModelAndView adminLogin() {
		return new ModelAndView("adminLogin", "user", new User());
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login";
	}
	
	@PostMapping("/login")
	public  String login(@RequestParam String email, @RequestParam String password, Model m, HttpSession session) {
		if(isEmpty(email) && isEmpty(password)) {
			m.addAttribute("error1", "Email and Password is required!");
		}else {
			if(isEmpty(email)) {
				m.addAttribute("password", password);
				m.addAttribute("error1", "Email is required!");
			}else {
				if(isEmpty(password)) {
					m.addAttribute("email", email);
					m.addAttribute("error1", "Password is required!");
				}
			}
		}
		
		if(!isEmpty(email) && !isEmpty(password)) {
			var user = dao.findByEmail(email);
			if(password.equals(user.getPassword())) {
				session.setAttribute("loginUser", user);
				return "redirect:/home";
			}else {
				m.addAttribute("email", email);
				m.addAttribute("password", password);
				m.addAttribute("error2", "Email or Password is incorrect!");
			}
		}
		
		return "login";
	}
	
	@PostMapping("/admin/login")
	public  String aLogin(@RequestParam String email, @RequestParam String password, Model m, HttpSession session) {
		
		if(isEmpty(email) && isEmpty(password)) {
			m.addAttribute("error1", "Email and Password is required!");
		}else {
			if(isEmpty(email)) {
				m.addAttribute("password", password);
				m.addAttribute("error1", "Email is required!");
			}else {
				if(isEmpty(password)) {
					m.addAttribute("error1", "Password is required!");
					m.addAttribute("email", email);
				}
			}
		}
		
		if(!isEmpty(email) && !isEmpty(password)) {
			var user = dao.findByEmail(email);
			if("Admin".equals(user.getRole().name())) {
				if(password.equals(user.getPassword())) {
					session.setAttribute("loginUser", user);
					return "redirect:/admin/dashboard";
				}else {
					m.addAttribute("email", email);
					m.addAttribute("password", password);
					m.addAttribute("error2", "Email or Password is incorrect!");
				}
			}else {
				m.addAttribute("email", email);
				m.addAttribute("password", password);
				m.addAttribute("error2", "You can't access to this section!");
			}
		}
		
		return "adminLogin";
	}
	
	private boolean isEmpty(String str) {
		return str == null || str.isEmpty() || str.isBlank();
	}
}

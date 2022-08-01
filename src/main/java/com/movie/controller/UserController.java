package com.movie.controller;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.movie.dao.UserDao;
import com.movie.model.User;

@Controller
@MultipartConfig
public class UserController {

	@Autowired
	private UserDao dao;
	
	@GetMapping("/admin/user/list")
	public String userList(Model m) {
		m.addAttribute("users", dao.findAll());
		return "user-management";
	}
	
	@GetMapping("/admin/user/edit")
	public String userEdit(@RequestParam String userId, Model m) {
		var user = dao.findById(Integer.parseInt(userId));
		m.addAttribute("user", user);
		return "user-edit";
	}
	
	@GetMapping("/admin/user/delete")
	public String userDelete(@RequestParam String userId) {
		dao.delete(Integer.parseInt(userId));
		return "redirect:/admin/user/list";
	}
	
	@GetMapping("/admin/profile")
	public String adminProfile(HttpSession session) {
		var loginUser = (User)session.getAttribute("adminUser");
		var user = dao.findById(loginUser.getId());
		session.setAttribute("adminUser", user);
		return "adminProfile";
	}
	
	@PostMapping("/admin/user/edit")
	public String edit(@ModelAttribute User user, RedirectAttributes attr, HttpSession session) {
		dao.update(user);
		attr.addAttribute("message", "User updated successfully!");
		var loginUser = (User)session.getAttribute("loginUser");
		if(user.getId() == loginUser.getId()) {
			session.setAttribute("loginUser", user);
		}
		return "redirect:/admin/user/list";
	}
	
	@PostMapping("/admin/profile/update")
	public String updateProfile(@RequestParam String name, @RequestParam String email, HttpSession session, Model m) {
		if(isEmpty(email)) {
			m.addAttribute("error1", "Email is required!");
		}
		
		if(isEmpty(name)) {
			m.addAttribute("error2", "Name is required!");
		}
		var user = (User)session.getAttribute("adminUser");
		if(!isEmpty(email) && !isEmpty(name)) {
			dao.updateProfile(name, email, user.getId());
			var loginUser = dao.findById(user.getId());
			session.setAttribute("adminUser", loginUser);
			return "redirect:/admin/profile";
		}
		
		return "adminProfile";
		
	}
	

	@PostMapping("/admin/password-change")
	public String passwordChange(@RequestParam String oldPassword, @RequestParam String password, @RequestParam String cpassword, Model m, HttpSession session) {
		
		if(isEmpty(oldPassword)) {
			m.addAttribute("error1", "Old Password is required!");
		}
		
		if(isEmpty(password)) {
			m.addAttribute("error2", "New Password is required!");
		}
		
		if(isEmpty(cpassword)) {
			m.addAttribute("error3", "Confirm Password is required!");
		}
		
		if(!isEmpty(cpassword) && !isEmpty(password) && !cpassword.equals(password)) {
			m.addAttribute("error4", "Password and Confirm Password are not match!");
		}
		
		var user = (User)session.getAttribute("adminUser");
		var loginuser = dao.findById(user.getId());
		if(!loginuser.getPassword().equals(oldPassword) && !isEmpty(cpassword) && !isEmpty(password) && cpassword.equals(password)) {
			m.addAttribute("error5", "Old Password is incorrect!");
		}else {
			dao.updatePassword(oldPassword, password, cpassword, loginuser.getId());
			return "redirect:/admin/profile";
		}
		
		return "adminProfile";
	}
	
	private boolean isEmpty(String str) {
		return str == null || str.isEmpty() || str.isBlank();
	}
	
}

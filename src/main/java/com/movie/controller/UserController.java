package com.movie.controller;

import javax.servlet.annotation.MultipartConfig;

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
		m.addAttribute("user", dao.findById(Integer.parseInt(userId)));
		return "user-edit";
	}
	
	@GetMapping("/admin/user/delete")
	public String userDelete(@RequestParam String userId) {
		dao.delete(Integer.parseInt(userId));
		return "redirect:/admin/user/list";
	}
	
	@PostMapping("/admin/user/edit")
	public String edit(@ModelAttribute User user, RedirectAttributes attr) {
		dao.update(user);
		return "redirect:/admin/user/list";
	}
	
}

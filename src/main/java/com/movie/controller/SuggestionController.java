package com.movie.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.movie.dao.SuggestionDao;

import com.movie.model.Suggestion;

@Controller
public class SuggestionController {
    @Autowired
    SuggestionDao dao;

    @GetMapping("/admin/suggestion/list")
    public String SuggestionList(Model m){
        m.addAttribute("suggestionList", dao.findAll());
        return "feedback-management";
    }

    @PostMapping("/suggestion/add")
    public String addSuggestion(@ModelAttribute Suggestion suggestion){
    	if(isEmpty(suggestion.getFeedback())) {
    		return "redirect:/home";
    	}
        dao.insert(suggestion);
        return "redirect:/home";
    }

   @GetMapping("/admin/suggestion/delete")
   public String deleteSuggestion(@RequestParam String feedbackId){
    dao.delete(Integer.parseInt(feedbackId));
    return"redirect:/admin/suggestion/list";
   }
   
   private boolean isEmpty(String str) {
		return str == null || str.isEmpty() || str.isBlank();
	}
}
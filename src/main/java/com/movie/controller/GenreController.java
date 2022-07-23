package com.movie.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.movie.model.Genre;

import com.movie.dao.GenreDao;

@Controller
public class GenreController {

	@Autowired
    GenreDao dao;
	
    @GetMapping("/admin/genre/list")
    public String Genre(Model model){
        model.addAttribute("genreList", dao.findAll());
        return "genre-management";
    }

    @GetMapping("/admin/genre/edit")
    public String setupAddGenre(@RequestParam(required = false) String genreId, Model m,@ModelAttribute Genre genre, RedirectAttributes req){
    		if(genreId != null) {
    			var g=dao.findById(genreId);
    			m.addAttribute("genre", g);
    		}
            return "genre-edit";
    }

    @PostMapping("/admin/genre/edit")
    public String addGenre(Model m,@ModelAttribute Genre genre, RedirectAttributes req){
    	if(genre == null || isEmpty(genre.getName())) {
    		m.addAttribute("error", "Genre name is required!");
    		return "genre-edit";
    	}
    	if(genre.getId() == null) {
    		var genres = dao.findAll();
    		for(var g : genres) {
    			if(g.getName().equals(genre.getName())) {
    				m.addAttribute("error", "%s genre is already existed!".formatted(genre.getName()));
    				return "genre-edit";
    			}
    		}
    		dao.addGenre(genre);
    		req.addFlashAttribute("message", "%s has been creared successfully!".formatted(genre.getName()));
    	}else {
    		dao.update(genre);
    		req.addFlashAttribute("message", "%s has been updated successfully!".formatted(genre.getName()));
    	}
    	return "redirect:/admin/genre/edit";
    }


    @GetMapping("/admin/genre/delete")
    public String deleteGenre(@RequestParam("genreId")int id, Model m){
        dao.deleteGenre(id);
        return "redirect:/admin/genre/list";
    }
    
    private boolean isEmpty(String str) {
		return str == null || str.isEmpty() || str.isBlank();
	}
}
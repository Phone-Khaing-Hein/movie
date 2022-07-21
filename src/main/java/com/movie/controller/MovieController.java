package com.movie.controller;

import java.io.File;
import java.io.IOException;
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

import com.movie.dao.MovieDao;
import com.movie.model.Movie;

@Controller
@MultipartConfig
public class MovieController {

	@Autowired
	private MovieDao dao;
	
	@GetMapping("/home")
	public String home(Model m) {
		m.addAttribute("movies", dao.findAll());
		return "home";
	}
	
	@GetMapping("/admin/dashboard")
	public String dashboard(Model m) {
		return "adminHome";
	}
	
	@GetMapping("/admin/movie/list")
	public String list(Model m) {
		var movies = dao.findAll();
		m.addAttribute("movies", movies);
		return "movie-management";
	}
	
	@GetMapping("/admin/movie/add")
	public String add(Model m) {
		return "movie-add";
	}
	
	@GetMapping("/movie/detail")
	public String detail(Model m, @RequestParam("movieId") String id) {
		m.addAttribute("m", dao.findById(id));
		return "movieDetail";
	}
	
	@PostMapping("/admin/movie/add")
	public String addMovie(@ModelAttribute Movie movie, Model m, RedirectAttributes redirect) throws IllegalStateException, IOException {
		if(isEmpty(movie.getName())) {
			m.addAttribute("error1", "Movie name is required!");
		}
			
		if(isEmpty(movie.getPosterFile().getOriginalFilename())) {
			m.addAttribute("error2", "Movie poster is required!");
		}
			
		if(isEmpty(movie.getReleaseDate())) {
			m.addAttribute("error3", "Movie release date is required!");
		}
			
		if(isEmpty(movie.getTrailer())) {
			m.addAttribute("error4", "Movie trailer is required!");
		}
			
		if(isEmpty(movie.getNormalDl())) {
			m.addAttribute("error5", "Movie normal download link is required!");
		}
			
		if(isEmpty(movie.getPremiumDl())) {
			m.addAttribute("error6", "Movie premiun download link is required!");
		}
			
		if(isEmpty(movie.getDescription())) {
			m.addAttribute("error7", "Movie description is required!");
		}
		
		if(movie.getEpisodes() == 0) {
			movie.setEpisodes(1);
		}
		
		if(!isEmpty(movie.getName()) && !isEmpty(movie.getPosterFile().getOriginalFilename()) && !isEmpty(movie.getReleaseDate()) && 
		   !isEmpty(movie.getTrailer()) && !isEmpty(movie.getNormalDl()) && !isEmpty(movie.getPremiumDl()) && !isEmpty(movie.getDescription())){
			
			var random = new Random();
			movie.setPoster(movie.getPosterFile().getName().concat(String.valueOf(random.nextInt())).concat(".jpg"));
			uploadFile(movie.getPosterFile(), movie.getPoster());
			dao.save(movie);
			redirect.addFlashAttribute("message", "%s has been created successfully!".formatted(movie.getName()));
			return "redirect:/admin/movie/add";
		   }
		
		return "movie-add";
	}
	
	private boolean isEmpty(String str) {
		return str == null || str.isEmpty() || str.isBlank();
	}
	
	public void uploadFile(MultipartFile file, String posterName) throws IllegalStateException, IOException {
		file.transferTo(
				new File("D:\\OJT assignment\\movie\\src\\main\\webapp\\image\\poster\\%s".formatted(posterName)));
	}

	public boolean deleteFile(String poster) {
		File fileToDelete = new File(
				"D:\\OJT assignment\\movie\\src\\main\\webapp\\image\\poster\\%s".formatted(poster));
		return fileToDelete.delete();
	}
}

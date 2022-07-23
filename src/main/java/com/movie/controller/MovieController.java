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

import com.movie.dao.GenreDao;
import com.movie.dao.MovieDao;
import com.movie.dao.PaymentDao;
import com.movie.dao.UserDao;
import com.movie.model.Movie;

@Controller
@MultipartConfig
public class MovieController {

	@Autowired
	private MovieDao dao;
	
	@Autowired
	private GenreDao dao2;
	
	@Autowired
	private UserDao dao3;
	
	@Autowired
	private PaymentDao dao4;
	
	@GetMapping("/**")
	public String notfound() {
		return "404";
	}
	
	@GetMapping({"/home","/"})
	public String home(Model m) {
		m.addAttribute("nav", "home");
		m.addAttribute("genres", dao2.findAll());
		m.addAttribute("movies", dao.findMovies6());
		m.addAttribute("series", dao.findSeries6());
		m.addAttribute("trends", dao.findAll6());
		return "home";
	}
	
	@GetMapping("/movies")
	public String movies(Model m) {
		m.addAttribute("genres", dao2.findAll());
		m.addAttribute("nav", "Movies");
		m.addAttribute("movies", dao.findAllMovies());
		return "template";
	}
	
	@GetMapping("/series")
	public String series(Model m) {
		m.addAttribute("genres", dao2.findAll());
		m.addAttribute("nav", "Series");
		m.addAttribute("movies", dao.findAllSeries());
		return "template";
	}
	
	@GetMapping("/trends")
	public String trends(Model m) {
		m.addAttribute("genres", dao2.findAll());
		m.addAttribute("nav", "Trends");
		m.addAttribute("movies", dao.findAll());
		return "template";
	}
	
	@GetMapping("/genre")
	public String searchByGenres(@RequestParam String name, Model m) {
		m.addAttribute("genres", dao2.findAll());
		m.addAttribute("nav", name);
		m.addAttribute("movies", dao.searchByGenre(name));
		return "searchByGenre";
	}
	
	@GetMapping("/search")
	public String searchByName(@RequestParam String keyword, Model m) {
		m.addAttribute("genres", dao2.findAll());
		m.addAttribute("keyword", keyword);
		m.addAttribute("movies", dao.searchByName(keyword));
		return "searchByGenre";
	}
	
	@GetMapping("/premium")
	public String premium() {
		return "premiumAds";
	}

	
	@GetMapping("/admin/dashboard")
	public String dashboard(Model m) {
		m.addAttribute("payments", dao4.paymentCount());
		m.addAttribute("movies", dao.movieCount());
		m.addAttribute("series", dao.seriesCount());
		m.addAttribute("users", dao3.userCount());
		return "adminHome";
	}
	
	@GetMapping("/admin/movie/list")
	public String list(Model m) {
		var movies = dao.findAll();
		m.addAttribute("movies", movies);
		return "movie-management";
	}
	
	@GetMapping("/admin/movie/add")
	public String add(@RequestParam(required = false) String movieId, Model m) {
		if(!isEmpty(movieId)) {
			m.addAttribute("movie", dao.findById(movieId));
			m.addAttribute("genres", dao.genres(Integer.parseInt(movieId)));
		}
		m.addAttribute("allGenres", dao2.findAll());
		return "movie-add";
	}
	
	@GetMapping("/admin/movie/delete")
	public String add(@RequestParam String movieId) {
		var poster = dao.findById(movieId).getPoster();
		deleteFile(poster);
		dao.delete(Integer.parseInt(movieId));
		return "redirect:/admin/movie/list";
	}
	
	@GetMapping("/movie/detail")
	public String detail(Model m, @RequestParam("movieId") String id) {
		m.addAttribute("genres", dao.genres(Integer.parseInt(id)));
		m.addAttribute("m", dao.findById(id));
		return "movieDetail";
	}
	
	@GetMapping("/admin/movie/detail")
	public String adminDetail(Model m, @RequestParam("movieId") String id) {
		m.addAttribute("genres", dao.genres(Integer.parseInt(id)));
		m.addAttribute("m", dao.findById(id));
		return "movie-detail";
	}
	
	@PostMapping("/admin/movie/add")
	public String addMovie(@ModelAttribute Movie movie, Model m, RedirectAttributes redirect, @RequestParam(required = false) String[] genres) throws IllegalStateException, IOException {
		
		if(isEmpty(movie.getName())) {
			m.addAttribute("error1", "Movie name is required!");
		}
		
		if(movie.getId() == null) {
			if(isEmpty(movie.getPosterFile().getOriginalFilename())) {
				m.addAttribute("error2", "Movie poster is required!");
			}
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
		
		if(genres == null) {
			m.addAttribute("error8", "Movie genre is required!(At least one!)");
		}
		
		if(movie.getEpisodes() == null) {
			movie.setEpisodes(1);
		}
		
		if(!isEmpty(movie.getName()) && (!isEmpty(movie.getPosterFile().getOriginalFilename()) || movie.getId() != null) && !isEmpty(movie.getReleaseDate()) && 
		   !isEmpty(movie.getTrailer()) && !isEmpty(movie.getNormalDl()) && !isEmpty(movie.getPremiumDl()) && !isEmpty(movie.getDescription())){
			
			if(movie.getPosterFile() != null && isEmpty(movie.getPoster())) {
				var random = new Random();
				movie.setPoster(movie.getPosterFile().getName().concat(String.valueOf(random.nextInt())).concat(".jpg"));
				uploadFile(movie.getPosterFile(), movie.getPoster());
			}
			if(movie.getId() == null) {
				dao.save(movie, genres);
				redirect.addFlashAttribute("message", "%s has been created successfully!".formatted(movie.getName()));
			}else {
				dao.update(movie, genres);
				redirect.addFlashAttribute("message", "%s has been updated successfully!".formatted(movie.getName()));
			}
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

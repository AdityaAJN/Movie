package com.movie.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.movie.entity.Genre;
import com.movie.service.GenreService;

@Controller
public class GenreController {
	@Autowired
	private GenreService genreService;
	
	@GetMapping("/displayGenree")
	public String displayGenre() {
		return "addGenre.jsp";
	}
	@PostMapping("/add")
    public String saveGenre(Genre genre,Model model) {
    	Genre genre2=genreService.addGenre(genre);
    	model.addAttribute("genre",genre2);
    	return "displayGenre.jsp";
    	
    }
	@GetMapping("/allGenres")
	public String displayAllGenre(Model model) {
		List<Genre> all = genreService.getAll();
		model.addAttribute("getGenre",all);
		return "getGenres.jsp";
		
		
	}
	@GetMapping ("/updateGenre")
	public String getUpdateForm(
		@RequestParam("genreId") Integer genreId,Model model
		) {
		
		
	}
	}
	
	


package com.movie.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.movie.dao.GenreDao;
import com.movie.entity.Genre;

@Service
public class GenreService {
	@Autowired
	private GenreDao genreDao;
	
	public Genre addGenre(Genre genre) {
		return genreDao.createGenre(genre);
	}

	public List<Genre> getAll(){
		return genreDao.fetchAllGenre();
	}
	public Genre getGenreById(Integer genreId) {
		return genreDao.findGenre(genreId);
		
	}
//	public Genre getUpdatedGenre(Integer genreId,Genre genre) {
//		return genreDao.updateGenre(genre, genreId)
//				;
//		
//	}
}

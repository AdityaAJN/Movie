package com.movie.dao;

import java.beans.PersistenceDelegate;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.movie.entity.Genre;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Persistence;
import jakarta.transaction.Transaction;

@Repository
public class GenreDao {
	private EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("silly");
	
	public Genre createGenre(Genre genre) {
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		EntityTransaction transaction= entityManager.getTransaction();
		transaction.begin();
		entityManager.persist(genre);
transaction.commit();
		return genre;
	}
	public List<Genre> fetchAllGenre(){
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		return entityManager.createQuery("SELECT g FROM Genre g",Genre.class).getResultList();
	}
	public Genre findGenre(Integer genreId){
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		return entityManager.find(Genre.class,genreId);
	}
//	public Genre updateGenre(Genre genre,Integer genreId){
//		EntityManager entityManager = entityManagerFactory.createEntityManager();
//		EntityTransaction entityTransaction = entityManager.getTransaction();
//		
//		Genre genre2 = findGenre(genreId);
//		if(genre2==null) {
//			throw new GenreNotFoundException("NO genre found");
//		}
//		genre2.setGenreDescription(genre.getGenreDescription());
//		genre2.setGenreName(genre.getGenreName());
//		
//		entityTransaction.begin();
//		entityManager.merge(genre2);
//		entityTransaction.commit();
//		return genre2;
//		
//	}
//	public Genre deleteGenre(Integer genreId,Genre genre) {
//		EntityManager entityManager = entityManagerFactory.createEntityManager();
//		EntityTransaction entitytransaction = entityManager.getTransaction();
//		
//		Genre genre2 = findGenre(genreId);
//		if(genre2==null) {
//			throw new GenreNotFoundException("No genre found with Id : "+genreId);
//			}
//		entitytransaction.begin();
//		entityManager.remove(genre2);
//		entitytransaction.commit();
//		
//		return genre2;
//		
//		}
	

}

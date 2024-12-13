package com.infosys.movieSystem.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.infosys.movieSystem.bean.MovieShow;
import com.infosys.movieSystem.bean.MovieShowEmbed;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;

@Service
@Repository
public class MovieShowDaoImpl implements MovieShowDao {
	@Autowired
	private MovieShowRepository repository;
	
	 @PersistenceContext
	    private EntityManager entityManager;
	
	@Override
	public void save(MovieShow movieShow) {
		repository.save(movieShow);
	}
	@Override
	public List<MovieShow> findAll(){
		return repository.findAll();
	}
	@Override
	public List<MovieShowEmbed> getAllIds(){
		return repository.getAllIds();
	}
	
	@Override
	public void deleteMovieShowById(MovieShowEmbed id) {
		repository.deleteById(id);
	}
	
	@Override
	public MovieShow getMovieShowById(MovieShowEmbed id) {
		return repository.findById(id).get(); 
	}
	
	@Override
    public MovieShow getMovieShowByMovieNameAndShowTimeName(String movieName, String showTimeName) {
        String query = "SELECT m FROM MovieShow m WHERE m.movieName = :movieName AND m.showTimeName = :showTimeName";
        try {
            return entityManager.createQuery(query, MovieShow.class)
                .setParameter("movieName", movieName)
                .setParameter("showTimeName", showTimeName)
                .getSingleResult(); // Returns the single result or throws an exception if not found
        } catch (Exception e) {
            return null; // Return null if no MovieShow is found
        }
    }
}

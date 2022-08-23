package com.example.cinema_back_end.services;


import com.example.cinema_back_end.dtos.MovieDTO;
import com.example.cinema_back_end.entities.Movie;


import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface IMovieService {
    List<MovieDTO> findAllShowingMovies();
    MovieDTO getById(Integer movieId);
    List<MovieDTO> findAllShowingMoviesByName(String name);
    List<MovieDTO> getAllMovies();
    MovieDTO getMovieAndSchedules(Integer id);
}

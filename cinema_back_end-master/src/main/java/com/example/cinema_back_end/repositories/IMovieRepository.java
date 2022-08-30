package com.example.cinema_back_end.repositories;

import com.example.cinema_back_end.entities.Movie;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface IMovieRepository extends JpaRepository<Movie, Integer> {
    List<Movie> findMoviesByIsShowingOrderByIdDesc(Integer isShowing);
    List<Movie> findMoviesByIsShowingAndNameContaining(Integer isShowing,String name);
    List<Movie> findMoviesByNameContaining(String name);
    @Query("SELECT m FROM Movie m JOIN FETCH m.scheduleList WHERE m.id = (:id)")
    Movie findByIdAndFetchSchedulesEagerly(@Param("id") Integer id);
}
package com.example.cinema_back_end.repositories;

import com.example.cinema_back_end.entities.Schedule;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

public interface IScheduleRepository extends JpaRepository<Schedule, Integer> {
    @Query("SELECT DISTINCT s.startTime FROM Schedule s WHERE s.movie.id=:movieId AND s.branch.id" +
            "= :branchId AND s.startDate=:startDate")
    List<LocalTime> getStartTimeByMovie_IdAndBranch_IdAndStartDate(@Param("movieId") Integer movieId
            , @Param("branchId") Integer branchId
            , @Param("startDate") LocalDate startDate);

    List<Schedule> getSchedulesByMovie_IdAndBranch_IdAndStartDateAndStartTimeAndRoom_Id(Integer movieId,Integer branchId
    , LocalDate startDate,LocalTime startTime,Integer roomId);
	  @Query(nativeQuery = true,value= "SELECT s.* FROM schedule s JOIN movie m on s.movie_id=m.id WHERE s.movie_id = :movieId"
	  + "   AND (s.start_date>curdate() OR (s.start_date=curdate() AND s.start_time>curtime()))")
	  List<Schedule> getScheduleThatShowTheMovie(@Param("movieId") Integer movieId);
}
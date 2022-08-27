package com.example.cinema_back_end.services;

import com.example.cinema_back_end.dtos.BranchDTO;
import com.example.cinema_back_end.dtos.MovieDTO;
import com.example.cinema_back_end.dtos.RoomDTO;
import com.example.cinema_back_end.dtos.ScheduleDTO;
import com.example.cinema_back_end.entities.Schedule;
import com.example.cinema_back_end.repositories.IScheduleRepository;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class ScheduleService implements IScheduleService {
    @Autowired
    private IScheduleRepository scheduleRepository;
    @Autowired
    private ModelMapper modelMapper;
    @Override
    public List<String> getStartTimes(Integer movieId, Integer branchId, LocalDate startDate) {
        return scheduleRepository.getStartTimeByMovie_IdAndBranch_IdAndStartDate(movieId,branchId,startDate)
                .stream().map(localTime -> localTime.format(DateTimeFormatter.ofPattern("HH:mm")))
                .collect(Collectors.toList());
    }

    @Override
    public List<ScheduleDTO> getSchedules(Integer movieId, Integer branchId, String startDate, String startTime,Integer roomId) {
        return scheduleRepository.getSchedulesByMovie_IdAndBranch_IdAndStartDateAndStartTimeAndRoom_Id(movieId,branchId
                        ,LocalDate.parse(startDate),LocalTime.parse(startTime), roomId)
                .stream().map(schedule -> modelMapper.map(schedule,ScheduleDTO.class))
                .collect(Collectors.toList());
    }

	@Override
	public List<ScheduleDTO> findAll() {
        return scheduleRepository.findAll()
        .stream().map(schedule -> {
        	ScheduleDTO s=modelMapper.map(schedule,ScheduleDTO.class);
        	s.setBranch(modelMapper.map(s.getBranch(), BranchDTO.class));
        	s.setMovie(modelMapper.map(s.getMovie(), MovieDTO.class));
        	s.setRoom(modelMapper.map(s.getRoom(), RoomDTO.class));
        	return s;	
        })
        .collect(Collectors.toList());
	}

	@Override
	public ScheduleDTO getById(Integer id) {
        	ScheduleDTO s=modelMapper.map(scheduleRepository.findById(id).get(),ScheduleDTO.class);
        	s.setBranch(modelMapper.map(s.getBranch(), BranchDTO.class));
        	s.setMovie(modelMapper.map(s.getMovie(), MovieDTO.class));
        	s.setRoom(modelMapper.map(s.getRoom(), RoomDTO.class));
        	return s;	
	}

	@Override
	public void update(ScheduleDTO schedule) {
		Schedule s=modelMapper.map(schedule, Schedule.class);
		s.getBranch().setId(schedule.getBranch().getId());
		s.getRoom().setId(schedule.getRoom().getId());
		s.getMovie().setId(schedule.getMovie().getId());
		scheduleRepository.save(s);
	}
	
	@Override
	public void remove(Integer id) {
		scheduleRepository.deleteById(id);	
	}
}

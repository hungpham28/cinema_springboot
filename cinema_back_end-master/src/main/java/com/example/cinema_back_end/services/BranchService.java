package com.example.cinema_back_end.services;

import com.example.cinema_back_end.dtos.BranchDTO;
import com.example.cinema_back_end.dtos.ScheduleDTO;
import com.example.cinema_back_end.entities.Branch;
import com.example.cinema_back_end.repositories.IBranchRepository;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class BranchService implements IBranchService{

    @Autowired
    private IBranchRepository branchRepository;

    @Autowired
    private ModelMapper modelMapper;

    @Override
    public List<BranchDTO> getBranchesThatShowTheMovie(Integer movieId) {
		return branchRepository.getBranchThatShowTheMovie(movieId)
				.stream().map(branch -> {
						BranchDTO b=modelMapper.map(branch, BranchDTO.class);
						b.setSchedules(branch.getScheduleList().stream()
								.map(schedule -> modelMapper.map(schedule,ScheduleDTO.class))
								.collect(Collectors.toList()));
						return b;
					})
				.collect(Collectors.toList());
    }

	@Override
	public BranchDTO getBranchAndSchedules(Integer branchId) {
		Branch branch= branchRepository.findByIdAndFetchSchedulesEagerly(branchId);
		BranchDTO branchDTO=modelMapper.map(branch, BranchDTO.class);
        branchDTO.setSchedules(branch.getScheduleList()
                .stream().map(schedule -> modelMapper.map(schedule,ScheduleDTO.class))
                .collect(Collectors.toList()));
        return branchDTO;
	}

	@Override
	public List<BranchDTO> getBranchesAndSchedules() {
		return branchRepository.getBranchesAndFetchSchedulesEagerly()
				.stream().map(branch -> {
						BranchDTO b=modelMapper.map(branch, BranchDTO.class);
						b.setSchedules(branch.getScheduleList().stream()
								.map(schedule -> modelMapper.map(schedule,ScheduleDTO.class))
								.collect(Collectors.toList()));
						return b;
					})
				.collect(Collectors.toList());
	}
}

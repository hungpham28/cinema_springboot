package com.example.cinema_client.controllers;

import com.example.cinema_client.constants.Api;
import com.example.cinema_client.models.BranchDTO;
import com.example.cinema_client.models.MovieDTO;
import com.example.cinema_client.models.ScheduleDTO;
import com.example.cinema_client.models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import javax.servlet.http.HttpServletRequest;

import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/")
public class HomeController {
    @Autowired
    private RestTemplate restTemplate;

    public static String apiGetShowingMovies = Api.baseURL+"/api/movies/showing";
    public static String API_GET_BRANCHES_AND_SCHEDULES = Api.baseURL+"/api/branches/branches-schedules";
    public static String API_GET_SHOWING_MOVIES_BY_NAME = Api.baseURL+"/api/movies/showing/search";
    
    @GetMapping
    public String displayHomePage(Model model){
        ResponseEntity<MovieDTO[]> responseMovies = restTemplate.getForEntity(apiGetShowingMovies,MovieDTO[].class);
        MovieDTO[] movies = responseMovies.getBody();
        ResponseEntity<BranchDTO[]> responseBranches = restTemplate.getForEntity(API_GET_BRANCHES_AND_SCHEDULES,BranchDTO[].class);
        BranchDTO[] branches = responseBranches.getBody();
        Map<Integer,MovieDTO> movieByBranch;
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("HH:mm");
		List<ScheduleDTO> schedules;
        for(BranchDTO branch: branches) {
        	movieByBranch= new HashMap<Integer,MovieDTO>();
        	schedules=branch.getSchedules();
        	for (ScheduleDTO schedule : schedules) {
        		
        		if(movieByBranch.get(schedule.getMovie().getId())==null) {
        			
        			schedule.getMovie().setSchedules(new ArrayList<>());
        			schedule.getMovie().getSchedules().add(schedule);
        			movieByBranch.put(schedule.getMovie().getId(),(MovieDTO) schedule.getMovie());
        			
        		}else {
        			
        			movieByBranch.get(schedule.getMovie().getId()).getSchedules().add(schedule);
        		}
			}
        	branch.setMovies(new ArrayList<MovieDTO>(movieByBranch.values()));
        }
        model.addAttribute("branches",branches);
        model.addAttribute("movies",movies);
        model.addAttribute("user",new User());
        return "home";
    }
    
    @PostMapping
    public String searchMoviesByName(HttpServletRequest request, Model model){
        // Gọi api lấy ra lịch được chọn
        String urlTemplate = UriComponentsBuilder.fromHttpUrl(API_GET_SHOWING_MOVIES_BY_NAME)
                .queryParam("name", "{name}")
                .encode()
                .toUriString();
        Map<String,String> listRequestParam = new HashMap<>();
        listRequestParam.put("name", request.getParameter("movie-name"));
        ResponseEntity<MovieDTO[]> response = restTemplate.getForEntity(urlTemplate,MovieDTO[].class,listRequestParam);
        MovieDTO[] movies = response.getBody();
        if(movies.length==0){
            return "movie-not-found";
        }
        model.addAttribute("movies",movies);
        model.addAttribute("user",new User());
        return "home";
    }
}

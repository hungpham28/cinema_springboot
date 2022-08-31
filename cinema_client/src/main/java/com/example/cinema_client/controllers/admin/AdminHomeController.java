package com.example.cinema_client.controllers.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("/admin")
public class AdminHomeController {
    @GetMapping
    public String displayHomePage(Model model){
//      HttpHeaders headers = new HttpHeaders();
//      headers.set(HttpHeaders.ACCEPT, MediaType.APPLICATION_JSON_VALUE);
//      JwtResponseDTO jwtResponseDTO = (JwtResponseDTO)session.getAttribute("jwtResponse");
//      headers.set(HttpHeaders.AUTHORIZATION,"Bearer "+jwtResponseDTO.getAccessToken());
//      HttpEntity<?> entity = new HttpEntity<>(headers);
//      ResponseEntity<MovieDTO[]> responseShowingMovies = restTemplate.getForEntity(API_GET_SHOWING_MOVIES,MovieDTO[].class);
//      MovieDTO[] showingMovies = responseShowingMovies.getBody();
//      model.addAttribute("tickets",comingMovies);
        return "admin/home-admin";
    }
}

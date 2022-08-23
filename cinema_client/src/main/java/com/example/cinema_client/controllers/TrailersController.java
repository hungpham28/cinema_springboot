package com.example.cinema_client.controllers;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import com.example.cinema_client.constants.Api;
import com.example.cinema_client.models.JwtResponseDTO;
import com.example.cinema_client.models.TicketDTO;
import com.example.cinema_client.models.User;

@Controller
@RequestMapping("/trailers")
public class TrailersController {
    @Autowired
    private RestTemplate restTemplate;

    public static String API_GET_TICKETS = Api.baseURL+"/api/tickets";
    @GetMapping
    public String displayHistoryPage(Model model, HttpServletRequest request){
//        HttpSession session = request.getSession();
//        // Gắn access token jwt vào header để gửi kèm request
//        HttpHeaders headers = new HttpHeaders();
//        headers.set(HttpHeaders.ACCEPT, MediaType.APPLICATION_JSON_VALUE);
//        JwtResponseDTO jwtResponseDTO = (JwtResponseDTO)session.getAttribute("jwtResponse");
//        headers.set(HttpHeaders.AUTHORIZATION,"Bearer "+jwtResponseDTO.getAccessToken());
//        HttpEntity<?> entity = new HttpEntity<>(headers);
//
//        // Gọi api lấy ra lịch được chọn
//        String urlTemplate = UriComponentsBuilder.fromHttpUrl(API_GET_TICKETS)
//                .queryParam("userId", "{userId}")
//                .encode()
//                .toUriString();
//        Map<String,String> listRequestParam = new HashMap<>();
//        listRequestParam.put("userId", jwtResponseDTO.getId()+"");
//
//        ResponseEntity<TicketDTO[]> response = restTemplate.exchange(urlTemplate, HttpMethod.GET,entity,TicketDTO[].class
//        ,listRequestParam);
//
//        TicketDTO[] listTickets = response.getBody();
//
//        model.addAttribute("listTickets",listTickets);
//        model.addAttribute("user",new User());
        return "trailers";
    }
}
package com.example.cinema_client.controllers;

import com.example.cinema_client.constants.Api;
import com.example.cinema_client.models.JwtResponseDTO;
import com.example.cinema_client.models.TicketDTO;
import com.example.cinema_client.models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import javax.print.attribute.UnmodifiableSetException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/account")
public class AccountController {
    @Autowired
    private RestTemplate restTemplate;
    public static String API_CHANGE_PASSWORD = Api.baseURL+"/api/account/change-password";
    public static String API_UPDATE_INFOR = Api.baseURL+"/api/account/update-infor";
    public static String API_GET_PROFILE = Api.baseURL+"/api/account";
    public static String API_GET_TICKETS = Api.baseURL+"/api/tickets";

    @GetMapping("/profile")
    public String displayProfilePage(Model model, HttpServletRequest request){
        HttpSession session = request.getSession();
        // Gắn access token jwt vào header để gửi kèm request
        HttpHeaders headers = new HttpHeaders();
        headers.set(HttpHeaders.ACCEPT, MediaType.APPLICATION_JSON_VALUE);
        JwtResponseDTO jwtResponseDTO = (JwtResponseDTO)session.getAttribute("jwtResponse");
        headers.set(HttpHeaders.AUTHORIZATION,"Bearer "+jwtResponseDTO.getAccessToken());
        HttpEntity<?> entity = new HttpEntity<>(headers);

        // Gọi api lấy ra lịch được chọn
        String urlTemplate = UriComponentsBuilder.fromHttpUrl(API_GET_TICKETS)
                .queryParam("userId", "{userId}")
                .encode()
                .toUriString();
        Map<String,String> listRequestParam = new HashMap<>();
        listRequestParam.put("userId", jwtResponseDTO.getId()+"");

        ResponseEntity<TicketDTO[]> response = restTemplate.exchange(urlTemplate, HttpMethod.GET,entity,TicketDTO[].class
        ,listRequestParam);

        TicketDTO[] listTickets = response.getBody();
        // Gọi api lấy ra thông tin người dùng
        urlTemplate = UriComponentsBuilder.fromHttpUrl(API_GET_PROFILE)
                .queryParam("userId", "{userId}")
                .encode()
                .toUriString();

        ResponseEntity<User> responseUser = restTemplate.exchange(urlTemplate, HttpMethod.GET,entity,User.class
        ,listRequestParam);

        User user = responseUser.getBody();
        model.addAttribute("listTickets",listTickets);
        model.addAttribute("userInf",user);
        model.addAttribute("user",new User());
        return "profile";
    }
    @PostMapping("/update-infor")
    public String updateProfilePage(@RequestParam String fullName,@RequestParam String username
    		,@RequestParam String phone , Model model, HttpServletRequest request) {
        User user=new User();
        user.setFullName(fullName);
        user.setUsername(username);
        user.setPhone(phone);
    	HttpSession session = request.getSession();
        // Gắn access token jwt vào header để gửi kèm request
        HttpHeaders headers = new HttpHeaders();
        headers.set(HttpHeaders.ACCEPT, MediaType.APPLICATION_JSON_VALUE);
        JwtResponseDTO jwtResponseDTO = (JwtResponseDTO)session.getAttribute("jwtResponse");
        headers.set(HttpHeaders.AUTHORIZATION,"Bearer "+jwtResponseDTO.getAccessToken());
        HttpEntity<?> entity = new HttpEntity<>(headers);
        // Gọi api lấy ra lịch sử mua vé được chọn
        String urlTemplate = UriComponentsBuilder.fromHttpUrl(API_GET_TICKETS)
                .queryParam("userId", "{userId}")
                .encode()
                .toUriString();
        Map<String,String> listRequestParam = new HashMap<>();
        listRequestParam.put("userId", jwtResponseDTO.getId()+"");
        System.out.println(entity);
        ResponseEntity<TicketDTO[]> responseTicket = restTemplate.exchange(urlTemplate, HttpMethod.GET,entity,TicketDTO[].class
        ,listRequestParam);
        System.out.println(responseTicket);
        TicketDTO[] listTickets = responseTicket.getBody();
        // Gọi api lấy ra thông tin người dùng
        urlTemplate = UriComponentsBuilder.fromHttpUrl(API_GET_PROFILE)
                .queryParam("userId", "{userId}")
                .encode()
                .toUriString();
        
        ResponseEntity<User> responseUser = restTemplate.exchange(urlTemplate, HttpMethod.GET,entity,User.class
        ,listRequestParam);
        System.out.println(responseUser);
        User userInf = responseUser.getBody();
        model.addAttribute("listTickets",listTickets);
        model.addAttribute("userInf",userInf);
        model.addAttribute("user",new User());
    	if(true) {
        HttpEntity<User> entityUser = new HttpEntity<>(user,headers);
        System.out.println("OK");
        // Gọi api gửi data qua API để update thông tin tài khoản

        ResponseEntity<User> response = restTemplate.exchange(API_UPDATE_INFOR, HttpMethod.POST,entityUser,User.class);
    	}
        return "profile";
    }
    @PostMapping("/change-password")
    public String updatePassWord(@RequestParam String newPassword,@RequestParam String validNewPassword , 
    		Model model, HttpServletRequest request){
        HttpSession session = request.getSession();
        // Gắn access token jwt vào header để gửi kèm request
        HttpHeaders headers = new HttpHeaders();
        headers.set(HttpHeaders.ACCEPT, MediaType.APPLICATION_JSON_VALUE);
        JwtResponseDTO jwtResponseDTO = (JwtResponseDTO)session.getAttribute("jwtResponse");
        headers.set(HttpHeaders.AUTHORIZATION,"Bearer "+jwtResponseDTO.getAccessToken());
        HttpEntity<?> entity = new HttpEntity<>(headers);
    	if(newPassword.equals(validNewPassword)) {
	        Map<String,String> listRequestParam = new HashMap<>();
	        listRequestParam.put("userId", jwtResponseDTO.getId()+"");
	        listRequestParam.put("newPassword", newPassword);
	        
	        String urlTemplate = UriComponentsBuilder.fromHttpUrl(API_CHANGE_PASSWORD)
	                .queryParam("userId", "{userId}")
	                .queryParam("newPassword","{newPassword}")
	                .encode()
	                .toUriString();
	        // Gọi api gửi data qua API để update thông tin tài khoản
	        
	        ResponseEntity<String> response = restTemplate.exchange(urlTemplate, HttpMethod.POST,entity,String.class,listRequestParam);
	        model.addAttribute("statusChangedPassword",true);
    	}else {
    		model.addAttribute("statusChangedPassword",false);
    	}
        // Gọi api lấy ra lịch sử mua vúa được chọn
        String urlTemplate = UriComponentsBuilder.fromHttpUrl(API_GET_TICKETS)
                .queryParam("userId", "{userId}")
                .encode()
                .toUriString();
        Map<String,String> listRequestParam = new HashMap<>();
        listRequestParam.put("userId", jwtResponseDTO.getId()+"");

        ResponseEntity<TicketDTO[]> response = restTemplate.exchange(urlTemplate, HttpMethod.GET,entity,TicketDTO[].class
        ,listRequestParam);

        TicketDTO[] listTickets = response.getBody();
        // Gọi api lấy ra thông tin người dùng
        urlTemplate = UriComponentsBuilder.fromHttpUrl(API_GET_PROFILE)
                .queryParam("userId", "{userId}")
                .encode()
                .toUriString();

        ResponseEntity<User> responseUser = restTemplate.exchange(urlTemplate, HttpMethod.GET,entity,User.class
        ,listRequestParam);

        User userInf = responseUser.getBody();
        model.addAttribute("listTickets",listTickets);
        model.addAttribute("user",userInf);
    	
    	return "profile";
    }
}

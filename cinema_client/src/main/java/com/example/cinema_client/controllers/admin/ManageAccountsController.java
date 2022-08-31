package com.example.cinema_client.controllers.admin;

import javax.servlet.http.HttpSession;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.cinema_client.models.JwtResponseDTO;

@Controller
@RequestMapping("/admin/accounts")
public class ManageAccountsController {
    @GetMapping
    public String displayManageAccountPage(HttpSession session,Model model){
        // Gắn access token jwt vào header để gửi kèm request
//        HttpHeaders headers = new HttpHeaders();
//        headers.set(HttpHeaders.ACCEPT, MediaType.APPLICATION_JSON_VALUE);
//        JwtResponseDTO jwtResponseDTO = (JwtResponseDTO)session.getAttribute("jwtResponse");
//        headers.set(HttpHeaders.AUTHORIZATION,"Bearer "+jwtResponseDTO.getAccessToken());
//        HttpEntity<?> entity = new HttpEntity<>(headers);
        return "admin/manage-account";
    }
}

package com.example.cinema_back_end.apis;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


import com.example.cinema_back_end.entities.User;
import com.example.cinema_back_end.security.jwt.JwtService;
import com.example.cinema_back_end.security.service.IUserService;

@CrossOrigin("*")
@RestController
@RequestMapping("/api/account")
public class AccountAPI {

    @Autowired
    private IUserService userService;
    
    @GetMapping
    private ResponseEntity<User> getProfileUser(@RequestParam Integer userId){
    	User user=userService.findById(userId).get();
    	user.setPassword("******");
        return new ResponseEntity<>(user, HttpStatus.OK);
    }
    @PostMapping("/update-infor")
    private ResponseEntity<String> updateProfileUser(@RequestBody User user){
        try {
        	User oldUser=userService.findById(user.getId()).get();
        	user.setPassword(oldUser.getPassword());
        	userService.updateInfor(user);
        } catch (RuntimeException e) {
            return new ResponseEntity<>(e.getMessage(), HttpStatus.EXPECTATION_FAILED);
        }
        return new ResponseEntity<>("Cập nhật profile thành công !", HttpStatus.OK);
    }
    @PostMapping("/change-password")
    private ResponseEntity<String> changePasswordUser(@RequestParam Integer userId,@RequestParam String newPassword){
        try {
        	User user=userService.findById(userId).get();
        	user.setPassword(newPassword);
        	userService.save(user);
        } catch (RuntimeException e) {
            return new ResponseEntity<>(e.getMessage(), HttpStatus.EXPECTATION_FAILED);
        }
        return new ResponseEntity<>("Thay đổi mật khẩu thành công !", HttpStatus.OK);
    }
}

package com.example.cinema_back_end.security.service;


import com.example.cinema_back_end.entities.User;

import org.springframework.data.domain.Pageable;
import org.springframework.security.core.userdetails.UserDetailsService;

import java.util.List;
import java.util.Optional;

public interface IUserService extends IGeneralService<User>, UserDetailsService {
    Optional<User> findByUsername(String username);
    void updateInfor(Integer userId,User user);
    void changePassword(Integer id,String newPass);
	void saveUserByAdmin(User user, boolean b) throws Exception;
	List<User> getPageUser(Pageable page);
	long countPage(Integer numEntities);
}

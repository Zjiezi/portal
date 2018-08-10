package com.bluewhite.portal.system.user.service;

import java.util.Optional;

import org.springframework.stereotype.Service;

import com.bluewhite.portal.base.BaseCRUDService;
import com.bluewhite.portal.system.user.entity.User;

@Service
public interface UserService  extends BaseCRUDService<User, Long>{
	
	/**
	 * 
	 * @param username
	 * @param password
	 * @return
	 */
	Optional<User> login(String username, String password);

}

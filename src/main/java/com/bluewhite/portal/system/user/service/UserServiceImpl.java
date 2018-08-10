package com.bluewhite.portal.system.user.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bluewhite.portal.base.BaseServiceImpl;
import com.bluewhite.portal.system.user.dao.UserDao;
import com.bluewhite.portal.system.user.entity.User;

@Service
public class UserServiceImpl extends BaseServiceImpl<User, Long> implements UserService {
	@Autowired
	private UserDao dao;

	@Override
	public Optional<User> login(String username, String password) {
		return  dao.findByUsernameAndPassword(username,password);
	}



}

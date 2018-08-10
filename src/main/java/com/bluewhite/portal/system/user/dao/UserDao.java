package com.bluewhite.portal.system.user.dao;

import java.util.Optional;

import com.bluewhite.portal.base.BaseRepository;
import com.bluewhite.portal.system.user.entity.User;

public interface UserDao  extends BaseRepository<User, Long> {
	
	/**
	 * 根据用户名密码查找用户
	 * @param username
	 * @param password
	 * @return
	 */
	public  Optional<User> findByUsernameAndPassword(String username, String password);

}

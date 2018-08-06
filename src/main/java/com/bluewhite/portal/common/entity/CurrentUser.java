package com.bluewhite.portal.common.entity;

import lombok.Data;

/**
 * 当前登录用户信息
 * 
 * @author long.xin
 *
 */
@Data
public class CurrentUser {

	/**
	 * 登录用户ID
	 */
	private Long id;
	/**
	 * 登录用户名
	 */
	private String userName;
	/**
	 * 登录用户真实名
	 */
	private String realname;
	/**
	 * 性别
	 */
	private Integer sex;


	
}

package com.bluewhite.portal.system.user.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.bluewhite.portal.base.BaseEntity;

import lombok.Getter;
import lombok.Setter;

/**
 * 
 * @author zhangliang
 *
 */
@Entity
@Table(name = "sys_user_message")
@Setter
@Getter
public class UserMessage extends BaseEntity<Long>{
	
	@Column(name = "username")
	private String username;
	
	@Column(name = "message")
	private String message;
	
	@Column(name = "email")
	private String email;
	
	@Column(name = "phone")
	private String phone;

	/**
	 * 查询字段
	 */
	@Transient
	private Date orderTimeBegin;
	/**
	 * 查询字段
	 */
	@Transient
	private Date orderTimeEnd;
	
}

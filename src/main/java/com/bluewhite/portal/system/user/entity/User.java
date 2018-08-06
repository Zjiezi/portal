package com.bluewhite.portal.system.user.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import com.bluewhite.portal.base.BaseEntity;

import lombok.Getter;
import lombok.Setter;
/**
 * 员工用户实体
 * @author zhangliang
 *
 */
@Entity
@Table(name = "sys_user")
@Setter
@Getter
public class User extends BaseEntity<Long> {
	
	@Column(name = "username")
	private String username;
	
	@Column(name = "password")
	private String password;

}

package com.bluewhite.portal.customer.entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

import com.bluewhite.portal.base.BaseEntity;
import com.bluewhite.portal.file.entity.Files;

import lombok.Getter;
import lombok.Setter;

/**
 * 产品实体
 * 
 * @author zhangliang
 *
 */
@Entity
@Table(name = "sys_customer")
@Setter
@Getter
public class Customer  extends BaseEntity<Long>{
	
	/**
	 * 客户名称
	 */
	@Column(name = "name")
	private String name;
	
	/**
	 * 客户详情
	 */
	@Column(name = "details")
	private String details;

	/**
	 * 图片关联
	 */
	@OneToMany(mappedBy = "customer",cascade = CascadeType.ALL, orphanRemoval = true)
	private Set<Files> files = new HashSet<Files>();
	
	/**
	 * 时间
	 */
	@Column(name = "time")
	private Date time;
	
	@Transient
	private String filesIds[];
	
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

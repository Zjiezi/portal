package com.bluewhite.portal.product.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import com.bluewhite.portal.base.BaseEntity;

import lombok.Getter;
import lombok.Setter;

/**
 * 产品实体
 * @author zhangliang
 *
 */
@Entity
@Table(name = "pro_product")
@Setter
@Getter
public class Product  extends BaseEntity<Long>{
	
	/**
	 * 产品名称
	 */
	@Column(name = "name")
	private String name;
	
	/**
	 * 产品编号
	 */
	@Column(name = "number")
	private String number;
	
	/**
	 * 备注
	 */
	@Column(name = "remark")
	private String remark;

}

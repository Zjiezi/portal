package com.bluewhite.portal.product.entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.bluewhite.portal.base.BaseEntity;
import com.bluewhite.portal.file.entity.Files;

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
     * 价格
     */
	@Column(name = "price")
    private Double price;
	
	/**
	 * 备注
	 */
	@Column(name = "remark")
	private String remark;
	
    /**
     * 中文详情
     */
	@Column(name = "details")
    private String details;
	
    /**
     *产品类型（0=新品，1=爆款）
     */
	@Column(name = "type")
    private String type;
	
	/**
	 * 图片关联
	 */
	@OneToMany(mappedBy = "product",cascade = CascadeType.ALL, orphanRemoval = true)
	private Set<Files> files = new HashSet<Files>();
	
	
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
	
	@Transient
	private String filesIds[];
}

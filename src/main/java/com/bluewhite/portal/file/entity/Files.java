package com.bluewhite.portal.file.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.bluewhite.portal.base.BaseEntity;
import com.bluewhite.portal.customer.entity.Customer;
import com.bluewhite.portal.product.entity.Product;

import lombok.Getter;
import lombok.Setter;

/**
 * 文件实体
 * @author zhangliang
 *
 */
@Entity
@Table(name = "pro_files")
@Setter
@Getter
public class Files  extends BaseEntity<Long>{
	
	/**
	 * 文件名称
	 */
	@Column(name = "name")
	private String name;
	
	/**
	 * 大小
	 */
	@Column(name = "size")
	private Long size;
	
	/**
	 * 产品格式类型
	 */
	@Column(name = "type")
	private String type;
	
	/**
	 * 文件地址
	 */
	@Column(name = "url")
	private String url;
	
	/**
	 * 图片使用类型（首页=home）
	 */
	@Column(name = "location_type")
	private String locationType;
	
	/**
	 * 产品图片类型（产品介绍图=introduce， 详情图 = details）
	 */
	@Column(name = "product_image_type")
	private String producImagetType;
	
	/**
	 * 产品id
	 */
	@Column(name = "product_id")
	private Long productId;
	
	/**
	 * 客户id
	 */
	@Column(name = "customer_id")
	private Long customerId;
	
	/**
	 * 标题
	 */
	@Column(name = "title")
	private String title;
	
	/**
	 * 内容
	 */
	@Column(name = "content")
	private String content;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "product_id", referencedColumnName = "id", insertable = false, updatable = false)
	private Product product;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "customer_id", referencedColumnName = "id", insertable = false, updatable = false)
	private Customer customer;

}

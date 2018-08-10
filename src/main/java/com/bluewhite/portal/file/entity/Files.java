package com.bluewhite.portal.file.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.bluewhite.portal.base.BaseEntity;
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
	 * 类型
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
	 * 产品id
	 */
	@Column(name = "product_id")
	private Long productId;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "product_id", referencedColumnName = "id", insertable = false, updatable = false)
	private Product product;

}

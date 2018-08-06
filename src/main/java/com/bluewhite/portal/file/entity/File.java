package com.bluewhite.portal.file.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import com.bluewhite.portal.base.BaseEntity;

import lombok.Getter;
import lombok.Setter;

/**
 * 文件实体
 * @author zhangliang
 *
 */
@Entity
@Table(name = "pro_file")
@Setter
@Getter
public class File  extends BaseEntity<Long>{
	
	/**
	 * 文件名称
	 */
	@Column(name = "name")
	private String name;

}

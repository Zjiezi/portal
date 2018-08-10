package com.bluewhite.portal.product.service;

import org.springframework.stereotype.Service;

import com.bluewhite.portal.base.BaseCRUDService;
import com.bluewhite.portal.common.entity.PageParameter;
import com.bluewhite.portal.common.entity.PageResult;
import com.bluewhite.portal.product.entity.Product;

@Service
public interface ProductService extends BaseCRUDService<Product, Long>{
	
	/**
	 * 产品列表
	 * @param prodcut
	 * @param page
	 * @return
	 */
	public PageResult<Product> findPages(Product prodcut, PageParameter page);

}

package com.bluewhite.portal.customer.service;

import org.springframework.stereotype.Service;

import com.bluewhite.portal.base.BaseCRUDService;
import com.bluewhite.portal.common.entity.PageParameter;
import com.bluewhite.portal.common.entity.PageResult;
import com.bluewhite.portal.customer.entity.Customer;

@Service
public interface CustomerService extends BaseCRUDService<Customer, Long>{
	
	/**
	 * 客户列表
	 * @param prodcut
	 * @param page
	 * @return
	 */
	public PageResult<Customer> findPages(Customer customer , PageParameter page);

}

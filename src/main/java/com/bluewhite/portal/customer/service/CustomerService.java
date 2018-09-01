package com.bluewhite.portal.customer.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.bluewhite.portal.base.BaseCRUDService;
import com.bluewhite.portal.common.entity.PageParameter;
import com.bluewhite.portal.customer.entity.Customer;

@Service
public interface CustomerService extends BaseCRUDService<Customer, Long>{
	
	/**
	 * 客户列表
	 * @param prodcut
	 * @param page
	 * @return
	 */
	public List<Customer> findPages(Customer customer);

}

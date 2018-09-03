package com.bluewhite.portal.customer.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.criteria.Predicate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.bluewhite.portal.base.BaseServiceImpl;
import com.bluewhite.portal.common.entity.PageParameter;
import com.bluewhite.portal.common.entity.PageResult;
import com.bluewhite.portal.customer.dao.CustomerDao;
import com.bluewhite.portal.customer.entity.Customer;
import com.bluewhite.portal.product.entity.Product;

@Service
public class CustomerServiceImpl  extends BaseServiceImpl<Customer, Long> implements CustomerService{
	
	@Autowired
	private CustomerDao dao;

	@Override
	public PageResult<Customer> findPages(Customer param , PageParameter page) {
		Page<Customer> pages = dao.findAll((root,query,cb) -> {
			List<Predicate> predicate = new ArrayList<>();
        	//按id过滤
        	if (param.getId() != null) {
				predicate.add(cb.equal(root.get("id").as(Long.class),param.getId()));
			}
        	
        	//按名称
        	if(!StringUtils.isEmpty(param.getName())){
        		predicate.add(cb.like(root.get("name").as(String.class), "%"+param.getName()+"%"));
        	}
    		//按时间过滤
    		if (!StringUtils.isEmpty(param.getOrderTimeBegin()) &&  !StringUtils.isEmpty(param.getOrderTimeEnd()) ) {
    			predicate.add(cb.between(root.get("createdAt").as(Date.class),
    					param.getOrderTimeBegin(),
    					param.getOrderTimeEnd()));
    		}
        	
			Predicate[] pre = new Predicate[predicate.size()];
			query.where(predicate.toArray(pre));
        	return null;
        },page);
		PageResult<Customer> result = new PageResult<>(pages,page);
        return result;
	}

}

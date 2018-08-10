package com.bluewhite.portal.product.service;

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
import com.bluewhite.portal.product.dao.ProductDao;
import com.bluewhite.portal.product.entity.Product;

@Service
public class ProductServiceImpl extends BaseServiceImpl<Product, Long> implements ProductService{
	
	@Autowired
	private ProductDao dao;

	@Override
	public PageResult<Product> findPages(Product param, PageParameter page) {
		 Page<Product> pages = dao.findAll((root,query,cb) -> {
	        	List<Predicate> predicate = new ArrayList<>();
	        	//按id过滤
	        	if (param.getId() != null) {
					predicate.add(cb.equal(root.get("id").as(Long.class),param.getId()));
				}
	        	
	        	//按产品名称
	        	if(!StringUtils.isEmpty(param.getName())){
	        		predicate.add(cb.like(root.get("name").as(String.class), "%"+param.getName()+"%"));
	        	}
	        	//按产品编号
	        	if(!StringUtils.isEmpty(param.getNumber())){
	        		predicate.add(cb.like(root.get("number").as(String.class), "%"+param.getNumber()+"%"));
	        	}
	        
	        	//按类型
	        	if(!StringUtils.isEmpty(param.getType())){
	        		predicate.add(cb.equal(root.get("type").as(Integer.class), param.getType()));
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
	        }, page);
		 	PageResult<Product> result = new PageResult<>(pages,page);
	        return result;
	}

}

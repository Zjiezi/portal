package com.bluewhite.portal.system.user.service;

import org.springframework.stereotype.Service;

import com.bluewhite.portal.base.BaseCRUDService;
import com.bluewhite.portal.common.entity.PageParameter;
import com.bluewhite.portal.common.entity.PageResult;
import com.bluewhite.portal.customer.entity.Customer;
import com.bluewhite.portal.system.user.entity.UserMessage;

@Service
public interface UserMessageService  extends BaseCRUDService<UserMessage, Long>{
	

	PageResult<UserMessage> findPages(UserMessage userMessage, PageParameter page);

}

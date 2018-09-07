package com.bluewhite.portal.system.user.action;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bluewhite.portal.common.ClearCascadeJSON;
import com.bluewhite.portal.common.entity.CommonResponse;
import com.bluewhite.portal.common.entity.PageParameter;
import com.bluewhite.portal.file.entity.Files;
import com.bluewhite.portal.product.entity.Product;
import com.bluewhite.portal.system.user.entity.UserMessage;
import com.bluewhite.portal.system.user.service.UserMessageService;

@Controller
public class UserAction {
	
	@Autowired
	private UserMessageService userMessageService;
	
	private ClearCascadeJSON clearCascadeJSON;

	{
		clearCascadeJSON = ClearCascadeJSON.get()
				.addRetainTerm(UserMessage.class, "id","username", "message", "email","phone","createdAt");
	}
	
	/**
	 * 
	 * 留言列表
	 * 
	 * @param request
	 * @param prodcut
	 * @return
	 */
	@GetMapping(value = "/message/messagePage")
	@ResponseBody
	public CommonResponse messagePage(HttpServletRequest request, UserMessage userMessage, PageParameter page) {
		CommonResponse cr = new CommonResponse();
		cr.setData(clearCascadeJSON.format(userMessageService.findPages(userMessage,page)).toJSON());
		cr.setMessage("查找成功");
		return cr;
	}

}

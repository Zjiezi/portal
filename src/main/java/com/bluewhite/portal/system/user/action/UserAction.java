package com.bluewhite.portal.system.user.action;

import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.support.ByteArrayMultipartFileEditor;

import com.bluewhite.portal.common.ClearCascadeJSON;
import com.bluewhite.portal.common.DateTimePattern;
import com.bluewhite.portal.common.entity.CommonResponse;
import com.bluewhite.portal.common.entity.PageParameter;
import com.bluewhite.portal.system.user.entity.UserMessage;
import com.bluewhite.portal.system.user.service.UserMessageService;

@RestController
public class UserAction {
	
	@Autowired
	private UserMessageService userMessageService;
	
	private ClearCascadeJSON clearCascadeJSON;
	{
		clearCascadeJSON = ClearCascadeJSON
				.get()
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
	public CommonResponse messagePage(HttpServletRequest request, UserMessage userMessage, PageParameter page) {
		CommonResponse cr = new CommonResponse();
		cr.setData(clearCascadeJSON.format(userMessageService.findPages(userMessage,page)).toJSON());
		cr.setMessage("查找成功");
		return cr;
	}
	
	
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateTimeFormat = new SimpleDateFormat(
				DateTimePattern.DATEHMS.getPattern());
		binder.registerCustomEditor(java.util.Date.class, null,
				new CustomDateEditor(dateTimeFormat, true));
		binder.registerCustomEditor(byte[].class,
				new ByteArrayMultipartFileEditor());
	}

}

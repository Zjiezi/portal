package com.bluewhite.portal.system.user.action;

import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bluewhite.portal.common.entity.CommonResponse;
import com.bluewhite.portal.common.entity.CurrentUser;
import com.bluewhite.portal.file.service.FilesService;
import com.bluewhite.portal.system.user.entity.User;
import com.bluewhite.portal.system.user.service.UserService;

@Controller
public class IndexAction {
	
	
	@Autowired
	private UserService userService;
	
	
	
	/**
	 * 后台登陆跳转
	 * @param request
	 * @param prodcut
	 * @return
	 */
	@GetMapping(value = "/backLogin")
	public String login() {
		return "login";
	}
	
	/**
	 * 后台首页跳转
	 * @param request
	 * @param prodcut
	 * @return
	 */
	@GetMapping(value = "/backIndex")
	public String index() {
		return "backIndex";
	}
	
	
	/**
	 * 后台登陆
	 * @param request
	 * @param prodcut
	 * @return
	 */
	@PostMapping(value = "/userLogin")
	@ResponseBody
	public CommonResponse userLogin(HttpServletRequest request,String username , String password) {
		CommonResponse cr = new CommonResponse();
		HttpSession session = request.getSession();
		if(session.getAttribute("user")!=null){
			cr.setData(session.getAttribute("user"));
			cr.setMessage("用户已登录");
			return cr;
		}
		Optional<User> user = userService.login(username,password);
		if(user.isPresent()){
			CurrentUser currentUser = new CurrentUser();
			currentUser.setUserName(user.get().getUsername());
			currentUser.setUrl("/backIndex");
			session.setAttribute("user", currentUser);
			cr.setData(currentUser);
			cr.setMessage("登陆成功");
		}else{
			cr.setMessage("用户名或密码错误");
		}
		return cr;
	}
	

	
	

}

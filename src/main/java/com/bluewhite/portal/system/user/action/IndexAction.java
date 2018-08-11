package com.bluewhite.portal.system.user.action;

import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bluewhite.portal.common.Constants;
import com.bluewhite.portal.common.entity.CommonResponse;
import com.bluewhite.portal.common.entity.CurrentUser;
import com.bluewhite.portal.system.user.entity.User;
import com.bluewhite.portal.system.user.service.UserService;

@Controller
public class IndexAction {
	
	
	@Autowired
	private UserService userService;
	
	/**
	 * 前台首页
	 * @param request
	 * @param prodcut
	 * @return
	 */
	@GetMapping(value = "/")
	public String index() {
		return Constants.INDEX_URL;
	}
	
	/**
	 * 后台登陆跳转
	 * @param request
	 * @param prodcut
	 * @return
	 */
	@GetMapping(value = "/backLogin")
	public String login() {
		return Constants.LOGIN_URL;
	}
	
	/**
	 * 后台首页跳转
	 * @param request
	 * @param prodcut
	 * @return
	 */
	@GetMapping(value = "/backIndex")
	public String backIndex() {
		return Constants.INDEX_BACK_URL;
	}
	
	
	/**
	 *根据不同菜单跳转不同的jsp
	 */
	@GetMapping(value = "/menusToUrl")
	public String menusToJsp(HttpServletRequest request,String url) {
		return url;
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
		if(session.getAttribute(Constants.CURRENT_USER)!=null){
			cr.setData(session.getAttribute(Constants.CURRENT_USER));
			cr.setMessage("用户已登录");
			return cr;
		}
		Optional<User> user = userService.login(username,password);
		if(user.isPresent()){
			CurrentUser currentUser = new CurrentUser();
			currentUser.setUserName(user.get().getUsername());
			currentUser.setUrl(Constants.INDEX_BACK_URL);
			session.setAttribute(Constants.CURRENT_USER, currentUser);
			cr.setData(currentUser);
			cr.setMessage("登陆成功");
		}else{
			cr.setMessage("用户名或密码错误");
		}
		return cr;
	}
	

	/**
	 * 退出登陆
	 * @param request
	 * @param prodcut
	 * @return
	 */
	@GetMapping(value = "/quitLogin")
	public String quitLogin(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute(Constants.CURRENT_USER);
		return Constants.LOGIN_URL;
	}
	

}

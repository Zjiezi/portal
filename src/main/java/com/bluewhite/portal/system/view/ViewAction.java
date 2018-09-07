package com.bluewhite.portal.system.view;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bluewhite.portal.common.ClearCascadeJSON;
import com.bluewhite.portal.common.Constants;
import com.bluewhite.portal.common.entity.CommonResponse;
import com.bluewhite.portal.common.entity.PageParameter;
import com.bluewhite.portal.customer.entity.Customer;
import com.bluewhite.portal.customer.service.CustomerService;
import com.bluewhite.portal.file.entity.Files;
import com.bluewhite.portal.file.service.FilesService;
import com.bluewhite.portal.product.entity.Product;
import com.bluewhite.portal.product.service.ProductService;
import com.bluewhite.portal.system.user.entity.UserMessage;
import com.bluewhite.portal.system.user.service.UserMessageService;

@Controller
@RequestMapping("/view")
public class ViewAction {
	
	@Autowired
	private FilesService filesService;
	
	@Autowired
	private ProductService service;
	
	@Autowired
	private UserMessageService userMessageService;
	
	
	private ClearCascadeJSON clearCascadeJSON;

	{
		clearCascadeJSON = ClearCascadeJSON.get()
				.addRetainTerm(Product.class, "id","number", "name", "price", "remark", "details", "type", "files","productType","size","filler","fabric")
				.addRetainTerm(Files.class, "id", "name", "size", "url", "type","producImagetType");
	}
	
	
	@Autowired
	private CustomerService customerService;
	
	
	private ClearCascadeJSON clearCascadeJSONOne;

	{
		clearCascadeJSONOne = ClearCascadeJSON.get()
				.addRetainTerm(Customer.class, "id","time", "name", "files","details")
				.addRetainTerm(Files.class, "id", "name", "size", "url", "type","producImagetType");
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
	 *	前台根据不同菜单跳转不同的jsp
	 */
	@GetMapping(value = "/menusToUrl")
	public String menusToJsp(HttpServletRequest request,String url,String paramName , String paramNum , Model model) {
		model.addAttribute("paramName", paramName);
		model.addAttribute("paramNum", paramNum);
		return url;
	}
	
	
	/**
	 * 前台获取图片列表
	 * @param request
	 * @param prodcut
	 * @return
	 */
	@GetMapping(value = "/files/getPicture")
	@ResponseBody
	public CommonResponse getPicture(HttpServletRequest request,String locationType) {
		CommonResponse cr = new CommonResponse();
		cr.setData(ClearCascadeJSON
				.get()
				.addRetainTerm(Files.class,"name","url","type","id","title","content","locationType")
				.format(filesService.findByType(locationType)).toJSON());
		cr.setMessage("成功");
		return cr;
	}
	
	
	/**
	 * 
	 * 产品详情
	 * @param request
	 * @param prodcut
	 * @return
	 */
	@GetMapping(value = "/product/getProduct")
	@ResponseBody
	public CommonResponse getProduct(HttpServletRequest request, Long id) {
		CommonResponse cr = new CommonResponse();
		cr.setData(clearCascadeJSON.format(service.findOne(id).get()).toJSON());
		cr.setMessage("查找成功");
		return cr;
	}
	
	/**
	 * 
	 * 产品列表
	 * 
	 * @param request
	 * @param prodcut
	 * @return
	 */
	@GetMapping(value = "/product/productPage")
	@ResponseBody
	public CommonResponse productPage(HttpServletRequest request, Product prodcut, PageParameter page) {
		CommonResponse cr = new CommonResponse();
		cr.setData(clearCascadeJSON.format(service.findPages(prodcut, page)).toJSON());
		cr.setMessage("查找成功");
		return cr;
	}
	
	
	
	/**
	 * 
	 * 客户列表
	 * 
	 * @param request
	 * @param prodcut
	 * @return
	 */
	@GetMapping(value = "/customer/customerPage")
	@ResponseBody
	public CommonResponse customerPage(HttpServletRequest request, Customer customer, PageParameter page) {
		CommonResponse cr = new CommonResponse();
		cr.setData(clearCascadeJSONOne.format(customerService.findPages(customer,page)).toJSON());
		cr.setMessage("查找成功");
		return cr;
	}
	
	/**
	 * 
	 * 客户详情
	 * 
	 * @param request
	 * @param prodcut
	 * @return
	 */
	@GetMapping(value = "/customer/getCustomer")
	@ResponseBody
	public CommonResponse getCustomer(HttpServletRequest request, Long id) {
		CommonResponse cr = new CommonResponse();
		cr.setData(clearCascadeJSONOne.format(customerService.findOne(id).get()).toJSON());
		cr.setMessage("查找成功");
		return cr;
	}
	
	/**
	 * 
	 * 用户留言
	 * 
	 * @param request
	 * @param prodcut
	 * @return
	 */
	@PostMapping(value = "/message/addMessage")
	@ResponseBody
	public CommonResponse addMessage(HttpServletRequest request, UserMessage userMessage) {
		CommonResponse cr = new CommonResponse();
		cr.setData(userMessageService.save(userMessage));
		cr.setMessage("留言成功");
		return cr;
	}

}

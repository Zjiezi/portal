package com.bluewhite.portal.system.view;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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

@Controller
@RequestMapping("/view")
public class ViewAction {
	
	@Autowired
	private FilesService filesService;
	
	@Autowired
	private ProductService service;
	
	
	private ClearCascadeJSON clearCascadeJSON;

	{
		clearCascadeJSON = ClearCascadeJSON.get()
				.addRetainTerm(Product.class, "id","number", "name", "price", "remark", "details", "type", "files","productType","size")
				.addRetainTerm(Files.class, "id", "name", "size", "url", "type","producImagetType");
	}
	
	
	@Autowired
	private CustomerService customerService;
	
	
	private ClearCascadeJSON clearCascadeJSONOne;

	{
		clearCascadeJSON = ClearCascadeJSON.get()
				.addRetainTerm(Customer.class, "id","time", "name", "files")
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
	public CommonResponse customerPage(HttpServletRequest request, Customer customer, PageParameter page) {
		CommonResponse cr = new CommonResponse();
		cr.setData(clearCascadeJSONOne.format(customerService.findPages(customer)).toJSON());
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
	public CommonResponse getCustomer(HttpServletRequest request, Long id) {
		CommonResponse cr = new CommonResponse();
		cr.setData(clearCascadeJSONOne.format(customerService.findOne(id).get()).toJSON());
		cr.setMessage("查找成功");
		return cr;
	}

}

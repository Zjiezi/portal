package com.bluewhite.portal.customer.action;

import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bluewhite.portal.common.ClearCascadeJSON;
import com.bluewhite.portal.common.entity.CommonResponse;
import com.bluewhite.portal.common.entity.PageParameter;
import com.bluewhite.portal.customer.entity.Customer;
import com.bluewhite.portal.customer.service.CustomerService;
import com.bluewhite.portal.file.entity.Files;
import com.bluewhite.portal.file.service.FilesService;

@RestController
public class CustomerAction {
	
	@Autowired
	private CustomerService service;
	
	@Autowired
	private FilesService filesService;
	
	private ClearCascadeJSON clearCascadeJSON;

	{
		clearCascadeJSON = ClearCascadeJSON.get()
				.addRetainTerm(Customer.class, "id","time", "name", "files")
				.addRetainTerm(Files.class, "id", "name", "size", "url", "type","producImagetType");
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
		cr.setData(clearCascadeJSON.format(service.findPages(customer)).toJSON());
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
		cr.setData(clearCascadeJSON.format(service.findOne(id).get()).toJSON());
		cr.setMessage("查找成功");
		return cr;
	}

	/**
	 * 
	 * 添加客户
	 * 
	 * @param request
	 * @param prodcut
	 * @return
	 */
	@PostMapping(value = "/customer/addCustomer")
	public CommonResponse addCustomer(HttpServletRequest request, Customer customer) {
		CommonResponse cr = new CommonResponse();
		if (customer.getId() != null) {
			Optional<Customer> oldCustomer = service.findOne(customer.getId());
			if (oldCustomer.isPresent()) {
				service.update(customer,oldCustomer.get());
			}
		}else{
			service.save(customer);
		}
		
		if(customer.getFilesIds()!=null){
			if (customer.getFilesIds().length > 0) {
				for (int i = 0; i < customer.getFilesIds().length; i++) {
					Long id = Long.parseLong(customer.getFilesIds()[i]);
					Optional<Files> files = filesService.findOne(id);
					if(files.isPresent()){
						files.get().setCustomerId(customer.getId());
						filesService.save(files.get());
					}
				}
			}
		}
		
		cr.setMessage("添加成功");
		return cr;
	}

	/**
	 * 
	 * 删除产品
	 * 
	 * @param request
	 * @param prodcut
	 * @return
	 */
	@GetMapping(value = "/customer/deleteCustomer")
	public CommonResponse deleteCustomer(HttpServletRequest request, String ids) {
		CommonResponse cr = new CommonResponse();
		int count = 0;
		if (!StringUtils.isEmpty(ids)) {
			String[] idArr = ids.split(",");
			if (idArr.length > 0) {
				for (int i = 0; i < idArr.length; i++) {
					Long id = Long.parseLong(idArr[i]);
					service.delete(id);
					cr.setMessage("删除成功"+(count++)+"条客户");
				}
			} else {
				cr.setMessage("客户不能为空");
			}
		}
		return cr;
	}


}

package com.bluewhite.portal.product.action;

import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bluewhite.portal.common.BeanCopyUtils;
import com.bluewhite.portal.common.ClearCascadeJSON;
import com.bluewhite.portal.common.entity.CommonResponse;
import com.bluewhite.portal.common.entity.PageParameter;
import com.bluewhite.portal.file.entity.Files;
import com.bluewhite.portal.product.entity.Product;
import com.bluewhite.portal.product.service.ProductService;

@RestController
public class ProductAction {

	@Autowired
	private ProductService service;

	private ClearCascadeJSON clearCascadeJSON;

	{
		clearCascadeJSON = ClearCascadeJSON.get()
				.addRetainTerm(Product.class, "id","number", "name", "price", "remark", "details", "type", "files")
				.addRetainTerm(Files.class, "id", "name", "size", "url", "type");
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
	public CommonResponse productPage(HttpServletRequest request, Product prodcut, PageParameter page) {
		CommonResponse cr = new CommonResponse();
		cr.setData(clearCascadeJSON.format(service.findPages(prodcut, page)).toJSON());
		cr.setMessage("查找成功");
		return cr;
	}
	
	/**
	 * 
	 * 产品详情
	 * 
	 * @param request
	 * @param prodcut
	 * @return
	 */
	@GetMapping(value = "/product/getProduct")
	public CommonResponse getProduct(HttpServletRequest request, Long id) {
		CommonResponse cr = new CommonResponse();
		cr.setData(clearCascadeJSON.format(service.findOne(id).get()).toJSON());
		cr.setMessage("查找成功");
		return cr;
	}

	/**
	 * 
	 * 添加产品
	 * 
	 * @param request
	 * @param prodcut
	 * @return
	 */
	@PostMapping(value = "/product/addProduct")
	public CommonResponse addProduct(HttpServletRequest request, Product prodcut) {
		CommonResponse cr = new CommonResponse();
		if (prodcut.getId() != null) {
			Optional<Product> oldProdcut = service.findOne(prodcut.getId());
			if (oldProdcut.isPresent()) {
				BeanCopyUtils.copyNullProperties(oldProdcut, prodcut);
				prodcut.setCreatedAt(oldProdcut.get().getCreatedAt());
			}

		}
		service.save(prodcut);
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
	@GetMapping(value = "/product/deleteProduct")
	public CommonResponse deleteProduct(HttpServletRequest request, String ids) {
		CommonResponse cr = new CommonResponse();
		int count = 0;
		if (!StringUtils.isEmpty(ids)) {
			String[] idArr = ids.split(",");
			if (idArr.length > 0) {
				for (int i = 0; i < idArr.length; i++) {
					Long id = Long.parseLong(idArr[i]);
					service.delete(id);
					cr.setMessage("删除成功"+(count++)+"条产品");
				}
			} else {
				cr.setMessage("产品不能为空");
			}
		}
		return cr;
	}

}

package com.bluewhite.portal.file.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.bluewhite.portal.common.ClearCascadeJSON;
import com.bluewhite.portal.common.entity.CommonResponse;
import com.bluewhite.portal.file.entity.Files;
import com.bluewhite.portal.file.service.FilesService;

@RestController
public class FilesAction {
	
	@Autowired
	private FilesService filesService;


	/**
	 * 产品上传图片（多文件）
	 * @param files
	 * @param request
	 * @return
	 */
	@PostMapping(value = "/files/uploadFiles")
	public CommonResponse uploadFiles(@RequestParam(value = "file", required = false) MultipartFile[] files,HttpServletRequest request) {
		List<Files> filesList = new ArrayList<Files>();
		CommonResponse cr = new CommonResponse();
		// 判断file数组不能为空并且长度大于0
		if (files != null && files.length > 0) {
			// 循环获取file数组中得文件
			for (int i = 0; i < files.length; i++) {
				MultipartFile file = files[i];
				// 保存文件
				Files fi = filesService.upFile(file, request);
				filesList.add(fi);
			}
		}
		cr.setMessage("上传"+filesList.size()+"张图片成功");
		return cr;
	}
	
	/**
	 * 获取首页海报图片
	 * @param request
	 * @param prodcut
	 * @return
	 */
	@GetMapping(value = "/files/getPicture")
	public CommonResponse getPicture(HttpServletRequest request,String type) {
		CommonResponse cr = new CommonResponse();
		cr.setData(ClearCascadeJSON
				.get()
				.addRetainTerm(Files.class,"name","url","type")
				.format(filesService.findByType(type)).toJSON());
		cr.setMessage("成功");
		return cr;
	}
	

}

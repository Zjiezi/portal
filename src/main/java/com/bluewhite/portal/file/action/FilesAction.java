package com.bluewhite.portal.file.action;

import java.util.Optional;

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
		CommonResponse cr = new CommonResponse();
		// 判断file数组不能为空并且长度大于0
		if (files != null && files.length > 0) {
			// 循环获取file数组中得文件
			for (int i = 0; i < files.length; i++) {
				MultipartFile file = files[i];
				// 保存文件
				Files fi = filesService.upFile(file, request);
				cr.setData(fi);
				cr.setMessage("图片上传成功");
			}
		}else{
			cr.setMessage("图片不能为空");
		}
		return cr;
	}
	
	/**
	 * 
	 * 删除文件
	 * 
	 * @param request
	 * @param prodcut
	 * @return
	 */
	@GetMapping(value = "/files/deletefiles")
	public CommonResponse deleteProduct(HttpServletRequest request, Long id) {
		CommonResponse cr = new CommonResponse();
		if(id!=null){
			filesService.delete(id);
			cr.setMessage("删除成功");
		}else{
			cr.setMessage("文件不能为空");
		}
		return cr;
	}
	
	
	
	/**
	 * 获取首页海报图片
	 * @param request
	 * @param prodcut
	 * @return
	 */
	@GetMapping(value = "/files/getPicture")
	public CommonResponse getPicture(HttpServletRequest request,String locationType) {
		CommonResponse cr = new CommonResponse();
		cr.setData(ClearCascadeJSON
				.get()
				.addRetainTerm(Files.class,"name","url","type","id","title","content")
				.format(filesService.findByType(locationType)).toJSON());
		cr.setMessage("成功");
		return cr;
	}
	
	/**
	 * 获取单个图片
	 * @param request
	 * @param prodcut
	 * @return
	 */
	@GetMapping(value = "/files/getPictureOne")
	public CommonResponse getPictureOne(HttpServletRequest request,Long id) {
		CommonResponse cr = new CommonResponse();
		Optional<Files> files = filesService.findOne(id);
		if(files.isPresent()){
			cr.setData(ClearCascadeJSON
					.get()
					.addRetainTerm(Files.class,"name","url","type","id","title","content")
					.format(files.get()).toJSON());
			cr.setMessage("成功");
		}else{
			cr.setMessage("没有该文件");
		}
		return cr;
	}
	

}

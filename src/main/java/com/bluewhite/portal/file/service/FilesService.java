package com.bluewhite.portal.file.service;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.bluewhite.portal.base.BaseCRUDService;
import com.bluewhite.portal.file.entity.Files;

@Service
public interface FilesService extends BaseCRUDService<Files, Long>{
	
	/**
	 * 上传文件
	 * @param file
	 * @param request
	 * @return
	 */
	Files upFile(MultipartFile file, HttpServletRequest request);
	
	/**
	 * 根据类型查询
	 * @param type
	 * @return
	 */
	List<Files>  findByType(String type);

}

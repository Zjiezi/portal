
package com.bluewhite.portal.file.service;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.bluewhite.portal.base.BaseServiceImpl;
import com.bluewhite.portal.file.dao.FilesDao;
import com.bluewhite.portal.file.entity.Files;

@Service
public class FilesServiceImpl extends BaseServiceImpl<Files, Long> implements FilesService{
	
	@Autowired
	private FilesDao dao;

	@Override
	public Files upFile(MultipartFile file, HttpServletRequest request) {
		Files files = new Files();
		String fileName = file.getOriginalFilename();
		String type = file.getContentType();
		long size = file.getSize() ;
		String filePath = request.getSession().getServletContext().getRealPath("/")+"upload/";  
		 File targetFile = new File(filePath);  
		 if(!targetFile.exists()){  
	            targetFile.mkdirs();  
	        }  
	        //保存  
	        try {  
	        	file.transferTo(new File(filePath+fileName));  
	        } catch (Exception e) {  
	            e.printStackTrace();  
	        }  
	        files.setName(fileName);
	        files.setType(type);
	        files.setUrl("upload/"+fileName);
	        files.setSize(size);
	        dao.save(files);
		return files;
	}

	@Override
	public List<Files> findByType(String type) {
		return dao.findByLocationType(type);
	}

}

package com.bluewhite.portal.file.dao;

import java.util.List;

import com.bluewhite.portal.base.BaseRepository;
import com.bluewhite.portal.file.entity.Files;

public interface FilesDao extends BaseRepository<Files, Long>{
	
	/**
	 * 根据位置类型查找
	 * @param type
	 * @return
	 */
	List<Files> findByLocationType(String type);

}

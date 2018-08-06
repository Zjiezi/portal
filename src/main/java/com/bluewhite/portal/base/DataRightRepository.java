package com.bluewhite.portal.base;

import java.io.Serializable;

import org.springframework.data.repository.NoRepositoryBean;

@NoRepositoryBean
public interface DataRightRepository<T, ID extends Serializable> extends BaseRepository<T, ID>{

}

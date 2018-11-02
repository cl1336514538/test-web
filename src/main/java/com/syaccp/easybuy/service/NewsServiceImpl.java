package com.syaccp.easybuy.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.syaccp.easybuy.mapper.NewsMapper;

@Service("newsService")
public class NewsServiceImpl implements NewsService {
	
	public NewsServiceImpl(){
		System.out.println("NewsServiceImpl++++++++++++++++++++++++++++");
	}
	
	@Resource
	NewsMapper newsMapper;
	
	/* (non-Javadoc)
	 * @see com.syaccp.easybuy.serviceImpl.NewsService#delete(java.lang.Integer)
	 */
	@Override
	public void delete(Integer id){
		newsMapper.deleteByPrimaryKey(id);
	}
}

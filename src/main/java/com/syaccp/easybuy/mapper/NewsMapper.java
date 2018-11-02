package com.syaccp.easybuy.mapper;

import com.syaccp.easybuy.pojo.News;

public interface NewsMapper {
    int deleteByPrimaryKey(Integer id);


    int insertSelective(News record);

    News selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(News record);

}
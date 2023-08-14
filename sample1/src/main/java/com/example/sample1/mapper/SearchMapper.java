package com.example.sample1.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.sample1.model.Search;

@Mapper
public interface SearchMapper {
	List<Search> selectSearchAll(HashMap<String, Object> map);
}

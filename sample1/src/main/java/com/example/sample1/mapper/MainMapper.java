package com.example.sample1.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.sample1.model.Main;



@Mapper
public interface MainMapper {
	
	// SHOP 리스트 출력
	List<Main> selectShopList (HashMap<String, Object> map);
}

package com.example.sample1.mapper;

import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.example.sample1.model.User;

@Mapper
public interface MypageMapper {
	
	int updateUserProfill(HashMap<String, Object> map);
}

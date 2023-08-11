package com.example.sample1.mapper;

import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper {
	// 회원가입
	int insert(HashMap<String, Object> map);
	// 아이디 중복체크
	int idCheck(HashMap<String, Object> map);
}

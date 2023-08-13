package com.example.sample1.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.sample1.mapper.UserMapper;
import com.example.sample1.model.User;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	UserMapper userMapper;

	@Override //회원가입
	public int insertUser(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return userMapper.insert(map);
	}
	
	@Override //로그인 시 아이디 비밀번호 체크
	public HashMap<String, Object> searchUserLoginAllCheck(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		User user =  userMapper.selectUserLoginAllCheck(map);
		
		 if(user != null) {
			 if(user.getUserLoginCnt() >= 5) {
				 resultMap.put("success", false);
				 resultMap.put("message", "비밀번호를 5회 이상 틀림 관리자한테 문의ㄱ");
				} else {
				resultMap.put("success", true);
				resultMap.put("message", "환영합니다.");
				resultMap.put("user", user); // 로그인에 성공하면 키값에다가 불러온 값을 저장한다
				userMapper.updateUserLoginCntReset(map); // cnt 초기화
				}
		} else {
			resultMap.put("success", false);
			user = userMapper.selectUserLoginIdCheck(map);
			if(user != null) {
				if(user.getUserLoginCnt() >= 5) {
					resultMap.put("success", false);
					resultMap.put("message", "비밀번호를 5회 이상 틀림 관리자한테 문의ㄱ");
				} else {
					resultMap.put("message", "패스워드 확인해라.");
				}
				userMapper.updateUserLoginCnt(map); // cnt + 1
				
			} else {
				resultMap.put("message", "없는 아이디");
			}
		}
		return resultMap;
	}

	// 아이디 중복 체크
	@Override
	public User searchUserLoginIdCheck(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return userMapper.selectUserLoginIdCheck(map);
	}

}

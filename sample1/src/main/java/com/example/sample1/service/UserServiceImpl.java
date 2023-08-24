package com.example.sample1.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.sample1.mapper.UserMapper;
import com.example.sample1.model.Mypage;
import com.example.sample1.model.User;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	UserMapper userMapper;

	@Override //회원가입
	public int insertUser(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		userMapper.insertUserDefaultImg(map);
		userMapper.insert(map);
		return 0;
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

	// 이메일, 비번, 전화번호 마스킹
	@Override
	public HashMap<String, Object> searchMaskedinfo(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		User user = userMapper.selectUserLoginIdCheck(map); // select id
		User masked = userMapper.selectMaskedinfo(map); // 마스킹
		resultMap.put("user", user);
		resultMap.put("masked", masked);
		return resultMap;
	}

	// 유저 로그인정보 변경
	@Override
	public int editUserLoginInfo(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return userMapper.updateUserLoginInfo(map);
	}
	// 비밀번호 힌트 답
	@Override
	public int searchPwdHintAnswer(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return userMapper.selectPwdHintAnswer(map);
	}
	
	// 유저 이메일 아이디 비번 체크
	@Override
	public int searchEmailIdPwd(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return userMapper.selectEmailIdPwd(map);
	}

	// 회원탈퇴
	@Override
	public int removeUserInfo(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return userMapper.updateUserInfoRemove(map);
	}

	// 유저 포인트 충전
	@Override
	public int userPointPlus(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		userMapper.insertPointHistory(map); // 결제내역 테이블 입력
		userMapper.updateUserPointPlus(map); // 유저 포인트 충전
		return 0;
	}

	@Override
	public int useraddrInput(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return userMapper.insertUserAddr(map);
	}

	@Override
	public List<Mypage> searchUserAddr(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return userMapper.selectUserAddr(map);
	}

}

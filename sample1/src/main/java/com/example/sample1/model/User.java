package com.example.sample1.model;

import lombok.Data;

@Data
public class User {

	
	// T1_TBL_USER_TBL
	private String userId; // 회원 아이디
	private String userPwd; // 회원 비밀번호
	private String userName; // 회원 이름
	private String userEmail; // 회원 이메일
	private String userPhone; // 회원 연락처
	private String userGender; // 회원 성별
	
	private String pwdHint; // 회원 비밀번호 힌트
	private String pwdAnswer; // 회원 비밀번호 답
	private String userJoindate; // 회원 회원가입 날짜
	private String userUpdate; // 회원 수정날짜
	private String userLeavedate; // 회원 탈퇴날자
	private String userState; // 회원 회원등급
	private String userBantn; // 회원 관리자용 유저제한
	
	// T1_TBL_USER_SUB_TBL
	private String userJumain; // 회원 주민번호
	private String userAddr; // 회원 주소
	private String userNickname; // 회원 닉네임 
	private int userLoginCnt;  // 회원 로그인 시도 횟수
	private String userSize;  // 회원 신발사이즈
	//private String userImg;  // 회원 프로필 이미지
	private int userPoint;  // 회원 포인트
	private String userAccount;  // 회원 계좌번호
	
	//T1_USER_TBL 이메일 비번 전화번호 마스킹
	private String maskedEmail;
	private String maskedPhone;
	private String maskedPwd;
	
	
	

	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserGender() {
		return userGender;
	}
	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}
	public String getPwdHint() {
		return pwdHint;
	}
	public void setPwdHint(String pwdHint) {
		this.pwdHint = pwdHint;
	}
	public String getPwdAnswer() {
		return pwdAnswer;
	}
	public void setPwdAnswer(String pwdAnswer) {
		this.pwdAnswer = pwdAnswer;
	}
	public String getUserJoindate() {
		return userJoindate;
	}
	public void setUserJoindate(String userJoindate) {
		this.userJoindate = userJoindate;
	}
	public String getUserUpdate() {
		return userUpdate;
	}
	public void setUserUpdate(String userUpdate) {
		this.userUpdate = userUpdate;
	}
	public String getUserLeavedate() {
		return userLeavedate;
	}
	public void setUserLeavedate(String userLeavedate) {
		this.userLeavedate = userLeavedate;
	}
	public String getUserState() {
		return userState;
	}
	public void setUserState(String userState) {
		this.userState = userState;
	}
	public String getUserBantn() {
		return userBantn;
	}
	public void setUserBantn(String userBantn) {
		this.userBantn = userBantn;
	}
	public String getUserJumain() {
		return userJumain;
	}
	public void setUserJumain(String userJumain) {
		this.userJumain = userJumain;
	}
	public String getUserAddr() {
		return userAddr;
	}
	public void setUserAddr(String userAddr) {
		this.userAddr = userAddr;
	}
	public String getUserNickname() {
		return userNickname;
	}
	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}
	public int getUserLoginCnt() {
		return userLoginCnt;
	}
	public void setUserLoginCnt(int userLoginCnt) {
		this.userLoginCnt = userLoginCnt;
	}
	public String getUserSize() {
		return userSize;
	}
	public void setUserSize(String userSize) {
		this.userSize = userSize;
	}
	public int getUserPoint() {
		return userPoint;
	}
	public void setUserPoint(int userPoint) {
		this.userPoint = userPoint;
	}
	public String getUserAccount() {
		return userAccount;
	}
	public void setUserAccount(String userAccount) {
		this.userAccount = userAccount;
	}
	
	

	

	
}

package com.example.sample1.model;

import lombok.Data;

@Data
public class Mypage {
	// T1_USER_IMAGE
	private String userImg;
	private String userImgName;
	
	// T1_USER_ADDR
	private String userId;
	private String userAddr;
	private String userDetailAddr;
	private String userZipno;
	private String defaultAddr;
	
	
	// T1_USER_TBL
	private String userName;
	
	// T1_USER_POINT
	private String type;
	private int pointHistory;
	private String pointDate;
	

	
}

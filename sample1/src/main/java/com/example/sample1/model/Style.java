package com.example.sample1.model;

import lombok.Data;

@Data
public class Style {
	//T1_STYLE 테이블
	private int styleNo;
	private String userId;
	private String userNickname;
	private String tag;
	private String contents;
	private String styleDate;
	
	//T1_STYLE_IMG 테이블
	private int idx;
	private String sImgPath;
	private String sImgName;
}

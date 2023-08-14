package com.example.sample1.model;

import lombok.Data;

@Data
public class Search {
	private String searchName; // 검색어
	private String searchCnt; // 검색횟수
	private String searchDate; // 검색 날짜
	private String searchEnd; // 만료 날짜
}

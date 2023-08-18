package com.example.sample1.model;

import lombok.Data;

@Data
public class Auction {
	//t1_auction
	private String auctionNumber; // 경매번호 (PK)
	private String auctionProduct; // 경매물품 
	private String auctionStartPrice; // 시작가격
	private String auctionMaxPrice; // 최고가격
	private String auctionStartDate; // 시작날짜
	private String auctionEndDate; // 마감날짜
	private String usercnt; // 마감날짜
	
	//t1_auction_user
	private String userId; // 유저아이디
	private String userPoint; // 유저가 등록한 포인트
	private String auctionDate; // 유저참가 시간
	private String duplicateStatus; // 중복여부
	//t1_auction_result	
	private String auctionPrice; // 경매낙찰가격
	

	
	
	
}

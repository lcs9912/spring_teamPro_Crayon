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
	private String auctionEndyn; // 삭제여부
	private String usercnt; // 유저카운트
	
	//t1_auction_user
	private String userId; // 유저아이디
	private String userPoint; // 유저가 등록한 포인트
	private String auctionDate; // 유저참가 시간
	private String duplicateStatus; // 중복여부
	//t1_auction_result	
	private String auctionPrice; // 경매낙찰가격
	//t1_auction_like		
	private String aLikeUser; // 관심유저
	private String likeDate; // 등록날짜
	public String getAuctionNumber() {
		return auctionNumber;
	}
	public void setAuctionNumber(String auctionNumber) {
		this.auctionNumber = auctionNumber;
	}
	public String getAuctionProduct() {
		return auctionProduct;
	}
	public void setAuctionProduct(String auctionProduct) {
		this.auctionProduct = auctionProduct;
	}
	public String getAuctionStartPrice() {
		return auctionStartPrice;
	}
	public void setAuctionStartPrice(String auctionStartPrice) {
		this.auctionStartPrice = auctionStartPrice;
	}
	public String getAuctionMaxPrice() {
		return auctionMaxPrice;
	}
	public void setAuctionMaxPrice(String auctionMaxPrice) {
		this.auctionMaxPrice = auctionMaxPrice;
	}
	public String getAuctionStartDate() {
		return auctionStartDate;
	}
	public void setAuctionStartDate(String auctionStartDate) {
		this.auctionStartDate = auctionStartDate;
	}
	public String getAuctionEndDate() {
		return auctionEndDate;
	}
	public void setAuctionEndDate(String auctionEndDate) {
		this.auctionEndDate = auctionEndDate;
	}
	public String getUsercnt() {
		return usercnt;
	}
	public void setUsercnt(String usercnt) {
		this.usercnt = usercnt;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPoint() {
		return userPoint;
	}
	public void setUserPoint(String userPoint) {
		this.userPoint = userPoint;
	}
	public String getAuctionDate() {
		return auctionDate;
	}
	public void setAuctionDate(String auctionDate) {
		this.auctionDate = auctionDate;
	}
	public String getDuplicateStatus() {
		return duplicateStatus;
	}
	public void setDuplicateStatus(String duplicateStatus) {
		this.duplicateStatus = duplicateStatus;
	}
	public String getAuctionPrice() {
		return auctionPrice;
	}
	public void setAuctionPrice(String auctionPrice) {
		this.auctionPrice = auctionPrice;
	}
	public String getaLikeUser() {
		return aLikeUser;
	}
	public void setaLikeUser(String aLikeUser) {
		this.aLikeUser = aLikeUser;
	}
	public String getLikeDate() {
		return likeDate;
	}
	public void setLikeDate(String likeDate) {
		this.likeDate = likeDate;
	}
	
	
	
}

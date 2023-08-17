package com.example.sample1.model;

import lombok.Data;

@Data
public class Product {
	private String orderNumber; // 상품등록번호(거래번호,주문번호)
	private String pName; // 상품이름
	private String pSize; // 상품사이즈
	private String pPrice; // 상품가격
	private String pUpdate; // 등록일
	private String pConfirmdate; // 확정일
	private String pEnd; // 마감일
	private String uId; // 회원아이디
	private String sellBuy; //구매,판매
	private String sellAccept; // 등록수락여부
	private String pModel; // 모델번호
	private String pColor; // 상품색상
	private String pLaunchPrice; // 상품발매가
	private String pImg; // 상품사진
	private String pCategorie1; // product_update 테이블에 있는 카테고리1
	private String pCategorie2; // product_update 테이블에 있는 카테고리2
	private String brand; // 브랜드
	private String interset; // 관심상품개수
	
	private String categorie1; // 카테고리1 테이블 
	private String c1Text; // 카테고리1 내용
	
	private String categorie2; // 카테고리2 테이블 
	private String c2Text; // 카테고리2 내용
	
	private String pBrand; // 상품 브랜드
	private String brandName; // 브랜드이름
}

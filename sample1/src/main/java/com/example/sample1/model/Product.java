package com.example.sample1.model;

import lombok.Data;

@Data
public class Product {
	private String productSellNumber; // 상품등록번호(거래번호,주문번호)
	private String productName; // 상품이름
	private String productSize; // 상품사이즈
	private String productPrice; // 상품가격
	private String productUpdate; // 등록일
	private String productConfirmdate; // 확정일
	private String productEnddate; // 마감일
	private String userId; // 회원아이디
	private String sellBuy; //구매,판매
	private String sellAccept; // 등록수락여부
	private String productModel; // 모델번호
	private String productColor; // 상품색상
	private String productLaunchPrice; // 상품발매가
	
	private String productCategorie1; // product_update 테이블에 있는 카테고리1
	private String productCategorie2; // product_update 테이블에 있는 카테고리2
	private String productBrand; // 브랜드
	private String productInterest; // 관심상품개수
	
	private String categorie1; // 카테고리1 테이블 
	private String c1Text; // 카테고리1 내용
	
	private String categorie2; // 카테고리2 테이블 
	private String c2Text; // 카테고리2 내용
	
	
	private String brandName; // 브랜드이름

	
	private int sellminprice; // 즉시 판매가격
	private int buyminprice; // 즉시 구매가격
	
	
}

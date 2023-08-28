package com.example.sample1.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.sample1.mapper.ProductMapper;
import com.example.sample1.model.Product;

@Service
public class ProductServiceImpl implements ProductService{
	@Autowired
	ProductMapper productMapper;
	
	//상품이미지 업로드
	@Override 
	public int addProductImg(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return productMapper.insertProductImg(map);
	}
	// 상품사이즈 조회
	@Override
	public List<Product> viewSize(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return productMapper.selectSize(map);
	}
	// 상품 구매/판매시 사이즈 조회
	@Override
	public Integer viewPaySize(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return productMapper.selectPaySize(map);
	}
	//상품 브랜드 조회
	@Override
	public List<Product> viewBrand(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return productMapper.selectBrand(map);
	}
	//브랜드 직접입력 추가
	@Override
	public int addBrand(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return productMapper.insertBrand(map);
	}
	//상품 등록
	@Override
	public HashMap<String, Object> addProduct(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		productMapper.insertProduct(map);
		resultMap.put("pName", map.get("pName"));
		return resultMap;
	}
	
	// 상품 상세페이지
	@Override
	public HashMap<String, Object> searchProductInfo(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		List<Product> proList =  productMapper.selectProductInfo(map); // 물품 상세페이지
		Product minSell = productMapper.selectSellMinPrice(map); // 즉시 판매가
		Product minBuy = productMapper.selectBuyMinPrice(map); // 즉시 구매가
		Product minDate = productMapper.selectProMindate(map); // 출시일
		
		
		Product resent = productMapper.selectRecentTransaction(map); // 최근거래가
		if(resent != null) {
			resultMap.put("resent", resent); // 상품 리스트
		}
		
		
		resultMap.put("proList", proList); // 상품 리스트
		
		resultMap.put("minDate", minDate); // 출시일
		
		resultMap.put("minSell", minSell); // 즉시 판매가
		resultMap.put("minBuy", minBuy); 	// 즉시 구매가
		
		
		
		return resultMap;
	}
	//상품 이미지 조회
	@Override
	public Product viewProductImg(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return productMapper.selectProductImg(map);
	}
	// 관심 등록
	@Override
	public int addInterest(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		productMapper.insertInterest(map); // 관심 등록
		productMapper.plusInterestCnt(map); // cnt+1
		return 0;
	}
	//유저  관심 조회
	@Override
	public Product searchInterest(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return productMapper.selectInterest(map);
	}
	// 관심해제
	@Override
	public int removeInterest(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		productMapper.deleteInterest(map);
		productMapper.minusdateInterestCnt(map); // cnt-1

		return 0;
	}
	@Override
	public List<Product> searchProBuyInfo(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return productMapper.selectProBuyInfo(map);
	}
	
	// 상품 SELL 리스트 출력
	@Override
	public List<Product> searchProductSellList(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return productMapper.selectProductSellList(map);
	}
	// 상품 BUY 리스트 출력
	@Override
	public List<Product> selectProductBuyList(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return productMapper.selectProductBuyList(map);
	}
	// 유저 즉시구매 
	@Override
	public int userProductNowBuy(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		productMapper.updateUserPoint(map); // 구매시 유저 포인트 차감
		productMapper.updateProductDelyn(map); // 상품 구매완료 처리
		productMapper.insertUserPointTbl(map); // 유저 포인트 내역 입력
		productMapper.insertTransaction(map);  // 구매완료 테이블 입력
		
		return 0;
	}
	
	
}

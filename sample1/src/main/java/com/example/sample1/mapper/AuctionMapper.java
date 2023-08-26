package com.example.sample1.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.sample1.model.Auction;
import com.example.sample1.model.Main;
import com.example.sample1.model.Product;

@Mapper
public interface AuctionMapper {
	
	List<Auction> selectAuctionList (HashMap<String, Object> map);
	
	Auction selectAuctionInfo (HashMap<String, Object> map);
	
	int insertAuctionPrice (HashMap<String, Object> map);
	
	Auction selectAuctionCheck (HashMap<String, Object> map);
	
	Product selectProductInfo (HashMap<String, Object> map);
	
	List<Product> selectBrand(HashMap<String, Object> map);
	
	int insertAuctionP (HashMap<String, Object> map);
	
	List<Auction>selectAuctionUserJoinList(HashMap<String, Object> map);
	
	
	int insertAuctionLike (HashMap<String, Object> map);
	
	int deleteAuctionLike (HashMap<String, Object> map);
	
	int endAuction (HashMap<String, Object> map);
	
	int insertAuctionResult (HashMap<String, Object> map);
	
	Auction selectAuctionEndInfo (HashMap<String, Object> map);
	
	Product selectProInfo (HashMap<String, Object> map);
	
}

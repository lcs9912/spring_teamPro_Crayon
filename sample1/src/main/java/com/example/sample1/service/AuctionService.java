package com.example.sample1.service;

import java.util.HashMap;
import java.util.List;

import com.example.sample1.model.Auction;
import com.example.sample1.model.Main;
import com.example.sample1.model.Product;

public interface AuctionService {
	
	List <Auction> searchAuctionList(HashMap<String, Object> map);
	
	
	Auction searchAuctionInfo (HashMap<String, Object> map);
	
	int updateAuctionPrice (HashMap<String, Object> map);
	
	Auction searchAuctionCheck (HashMap<String, Object> map);
	
	Product searchProductInfo (HashMap<String, Object> map);
	
	List<Product> viewBrand(HashMap<String, Object> map);
	
	int updateAuctionP(HashMap<String, Object> map);
	
	List<Auction> viewJoinUser(HashMap<String, Object> map);
	
	int updateAuctionLike(HashMap<String, Object> map);

	int deleteAuctionLike(HashMap<String, Object> map);
	
	int endAuction(HashMap<String, Object> map);
	
	Auction searchAuctionEndInfo (HashMap<String, Object> map);
	
	Product selectProInfo (HashMap<String, Object> map);
	

}

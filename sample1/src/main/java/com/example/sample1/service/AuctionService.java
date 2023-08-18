package com.example.sample1.service;

import java.util.HashMap;
import java.util.List;

import com.example.sample1.model.Auction;

public interface AuctionService {
	
	List <Auction> searchAuctionList(HashMap<String, Object> map);

}

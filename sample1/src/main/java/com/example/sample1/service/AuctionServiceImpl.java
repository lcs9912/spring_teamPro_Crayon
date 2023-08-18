package com.example.sample1.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.sample1.mapper.AuctionMapper;
import com.example.sample1.model.Auction;

@Service
public class AuctionServiceImpl implements AuctionService{
	
	@Autowired
	AuctionMapper auctionMapper;

	@Override
	public List<Auction> searchAuctionList(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return auctionMapper.selectAuctionList(map);
	}
	
	
}

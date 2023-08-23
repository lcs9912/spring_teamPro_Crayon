package com.example.sample1.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.sample1.mapper.AuctionMapper;
import com.example.sample1.model.Auction;
import com.example.sample1.model.Product;

@Service
public class AuctionServiceImpl implements AuctionService{
	
	@Autowired
	AuctionMapper auctionMapper;

	@Override
	public List<Auction> searchAuctionList(HashMap<String, Object> map) {
		return auctionMapper.selectAuctionList(map);
	}

	@Override
	public Auction searchAuctionInfo(HashMap<String, Object> map) {
		return auctionMapper.selectAuctionInfo(map);
	}

	@Override
	public int updateAuctionPrice(HashMap<String, Object> map) {
		return auctionMapper.insertAuctionPrice(map);
	}

	@Override
	public Auction searchAuctionCheck(HashMap<String, Object> map) {
		return auctionMapper.selectAuctionCheck(map);
	}

	@Override
	public Product searchProductInfo(HashMap<String, Object> map) {
		return auctionMapper.selectProductInfo(map);
	}

	@Override
	public List<Product> viewBrand(HashMap<String, Object> map) {
		return auctionMapper.selectBrand(map);
	}

	@Override
	public int updateAuctionP(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return auctionMapper.insertAuctionP(map);
	}

	@Override
	public List<Auction> viewJoinUser(HashMap<String, Object> map) {
	    return auctionMapper.selectAuctionUserJoinList(map);
	}

	@Override
	public int updateAuctionLike(HashMap<String, Object> map) {
		return auctionMapper.insertAuctionLike(map);
		}

	@Override
	public int deleteAuctionLike(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return auctionMapper.deleteAuctionLike(map);
	}

	@Override
	public int endAuction(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		auctionMapper.endAuction(map);
		return auctionMapper.insertAuctionResult(map);
	}

	@Override
	public Auction searchAuctionEndInfo(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return auctionMapper.selectAuctionEndInfo(map);
	}



	
	
	
}

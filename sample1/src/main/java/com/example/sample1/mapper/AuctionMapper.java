package com.example.sample1.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.sample1.model.Auction;

@Mapper
public interface AuctionMapper {
	
	List<Auction> selectAuctionList (HashMap<String, Object> map);
	
}

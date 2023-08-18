package com.example.sample1.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.sample1.model.Auction;
import com.example.sample1.service.AuctionService;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AuctionController {
	
	
	 @Autowired AuctionService auctionService;
	 
	
	// Auction리스트 출력
	@RequestMapping("/auction/list.do") 
	public String auctionList(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "/auction/auction_list";
	}
		
	
	@RequestMapping(value = "/auction/list.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String boardList(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		List<Auction> list =auctionService.searchAuctionList(map);
		resultMap.put("list", list);
		return new Gson().toJson(resultMap);
	}
	
}

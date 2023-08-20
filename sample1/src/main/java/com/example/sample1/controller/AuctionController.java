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
	// Auctiont 상세보기 출력
	@RequestMapping("/auction/view.do") 
	public String auctionView(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		request.setAttribute("map", map);
		return "/auction/auction_view";
	}
	
	//Aution 리스트 출력
	@RequestMapping(value = "/auction/list.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String auctionList(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		List<Auction> list =auctionService.searchAuctionList(map);
		resultMap.put("list", list);
		return new Gson().toJson(resultMap);
	}
	
	//Aution 상세정보 출력
		@RequestMapping(value = "/auction/view.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
		@ResponseBody
		public String auctionInfo(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
			HashMap<String, Object> resultMap = new HashMap<String, Object>();
			Auction info = auctionService.searchAuctionInfo(map);
			resultMap.put("info", info);
			return new Gson().toJson(resultMap);
		}
	
}

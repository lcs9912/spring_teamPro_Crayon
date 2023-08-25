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
import com.example.sample1.model.Product;
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
	// Auction리스트 출력
		@RequestMapping("/tauction/list.do") 
		public String tauctionList(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
			return "/auction/tauction_list";
		}
	// Auction 상세보기 출력
	@RequestMapping("/auction/view.do") 
	public String auctionView(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		request.setAttribute("map", map);
		return "/auction/auction_view";
	}
	// Auction 입찰 
	@RequestMapping("/auction/join.do") 
	public String auctionjoin(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		request.setAttribute("map", map);
		return "/auction/auction_join";
	}
	// Auction 입찰확인 
	@RequestMapping("/auction/check.do") 
	public String auctionCheck(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		request.setAttribute("map", map);
		return "/auction/auction_check";
	}
	// Auction 물품등록 
	@RequestMapping("/auction/update.do") 
	public String auctionUpdate(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		request.setAttribute("map", map);
		return "/auction/auction_Pup";
	}
	
	// Auction 페이지 
		@RequestMapping("/auction.do") 
		public String auction(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
			request.setAttribute("map", map);
			return "/auction/auction";
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
	//Aution 참가
		@RequestMapping(value = "/auction/join.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
		@ResponseBody
		public String auctionPrice(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
			HashMap<String, Object> resultMap = new HashMap<String, Object>();
			auctionService.updateAuctionPrice(map);
			return new Gson().toJson(resultMap);
		}
		//Aution 자기 입찰 정보 출력
		@RequestMapping(value = "/auction/check.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
		@ResponseBody
		public String auctionCheck(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
			HashMap<String, Object> resultMap = new HashMap<String, Object>();
			Auction info = auctionService.searchAuctionCheck(map);
			resultMap.put("info", info);
			return new Gson().toJson(resultMap);
	}	
	//Product 상세정보 출력
		@RequestMapping(value = "/auction/product.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
		@ResponseBody
		public String ProductInfo(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
			HashMap<String, Object> resultMap = new HashMap<String, Object>();
			Product info = auctionService.searchProductInfo(map);
			resultMap.put("info", info);
		return new Gson().toJson(resultMap);
	}
	// 상품 브랜드 조회
	@RequestMapping(value = "/auction/brand.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String brand(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		List<Product> list = auctionService.viewBrand(map);
		resultMap.put("list", list);
		return new Gson().toJson(resultMap);
		}
	//Aution 물품 등록
			@RequestMapping(value = "auction/update.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
			@ResponseBody
			public String auctionP(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
				HashMap<String, Object> resultMap = new HashMap<String, Object>();
				auctionService.updateAuctionP(map);
				return new Gson().toJson(resultMap);
			}	
	//Aution 리스트 출력
	@RequestMapping(value = "/auction/user/list.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String auctionUserList(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
	    HashMap<String, Object> resultMap = new HashMap<String, Object>();
	    List<Auction> list = auctionService.viewJoinUser(map);
	    resultMap.put("list", list);
	   return new Gson().toJson(resultMap);
	}
	//Aution 물품 등록
	@RequestMapping(value = "/auction/user/like.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String auctionLike(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		auctionService.updateAuctionLike(map);
		return new Gson().toJson(resultMap);
	}			
	//Aution 물품 등록
		@RequestMapping(value = "/auction/user/unlike.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
		@ResponseBody
		public String auctionUnLike(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
			HashMap<String, Object> resultMap = new HashMap<String, Object>();
			auctionService.deleteAuctionLike(map);
			return new Gson().toJson(resultMap);
		}		
	//Aution 결과 등록 +종료 등록
	@RequestMapping(value = "/auction/auction/end.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String auctionEnd(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		auctionService.endAuction(map);
		return new Gson().toJson(resultMap);
	}	
		
	//Aution 상세정보 출력
			@RequestMapping(value = "/auction/endU.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
			@ResponseBody
			public String auctionEndInfo(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
				HashMap<String, Object> resultMap = new HashMap<String, Object>();
				Auction info = auctionService.searchAuctionEndInfo(map);
				resultMap.put("info1", info);
				return new Gson().toJson(resultMap);
			}	
}

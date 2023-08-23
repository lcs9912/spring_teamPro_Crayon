package com.example.sample1.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.sample1.model.User;
import com.example.sample1.service.MypageService;
import com.google.gson.Gson;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;


@Controller
public class MypageController {
	
	@Autowired
	HttpSession session;
	@Autowired
	MypageService mypageService;
	// 마이페이지 전체정보 목록
	@RequestMapping("/mypage.do") 
    public String mypage(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "/mypage/mypage"; 
    }
	
	// 마이페이지 구매내역 목록
	@RequestMapping("/mypagebuylist.do") 
    public String mypagebuylist(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/mypage/mypagebuylist";
    }
	
	// 마이페이지 본인정보 목록
	@RequestMapping("/mypagelogininfo.do") 
	public String mypagelogininfo(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{

		return "/mypage/mypagelogininfo";
	}
	
	// 마이페이지 판매내역 목록
	@RequestMapping("/mypageselllist.do") 
	public String mypageselllist(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
	
		return "/mypage/mypageselllist";
	}
	// 마이페이지 프로필관리 목록
	@RequestMapping("/mypageprofile.do") 
	   public String mypageprofile(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "/mypage/mypageprofile"; 
	   }
	// 마이페이지 로그인정보 > 이메일정보 수정 팝업
	@RequestMapping("/loginInfoPopup.do") 
	public String mypageEditUserEmailPopup(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		request.setAttribute("map", map);
		return "/mypage/mypageEditUserEmailPopup";
	}
	
	// 마이페이지 로그인정보 > 이메일정보 수정 팝업 
	@RequestMapping("/testPopup.do") 
	public String testPopup(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		request.setAttribute("map", map);
		return "/mypage/testPopup";
	}
	// 마이페이지 포인트충전페이지 목록
	@RequestMapping("/mypageaddpoint.do") 
	public String mypageaddpoint(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "/mypage/mypageaddpoint"; 
	}
		
	//마이페이지 관심상품 목록
	@RequestMapping("/mypageproductinter.do") 
	public String mypageproductinter(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "/mypage/mypageproductinter"; 
	}
		
	//마이페이지 주소록 목록
	@RequestMapping("/mypageaddr.do") 
	public String mypageaddr(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "/mypage/mypageaddr"; 
	}
		
	//마이페이지 결제정보 목록
	@RequestMapping("/mypagepaylist.do") 
	public String mypagepaylist(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "/mypage/mypagepaylist"; 
	}
		
	//마이페이지 판매정산계좌 목록
	@RequestMapping("/mypagebank.do") 
	public String mypagebank(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "/mypage/mypagebank"; 
	}
		
	// 주소입력 팝업
	@RequestMapping("/addr.do") 
    public String addr(Model model, @RequestParam HashMap<String, Object> map, HttpServletRequest request) throws Exception{
		
		return "/mypage/jusoPopup";
    }
		
	// 마이페이지 프로필 변경
	@RequestMapping(value = "/mypage/editFrofill.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String editFrofill(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		mypageService.editUserProfill(map);
					
		return new Gson().toJson(resultMap);
	}
		
}

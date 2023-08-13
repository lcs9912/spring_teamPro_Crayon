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
import com.example.sample1.service.UserService;
import com.google.gson.Gson;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {
	
	@Autowired
	UserService userService;
	
	@Autowired
	HttpSession session;
	// 로그인
	@RequestMapping("/login.do") 
    public String login(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/user/login";
    }
	//  회원가입
	@RequestMapping("/join.do") 
    public String join(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/user/join";
    }
	
	// 로그인 이찬신
	@RequestMapping("/loginLCS.do") 
    public String loginLCS(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/user/login_LCS";
    }
	
	@RequestMapping("/header.do") 
    public String header(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/header";
    }
	
	@RequestMapping("/header2.do") 
    public String header2(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/header2";
    }
	
	@RequestMapping("/footer.do") 
    public String footer(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/footer";
    }
	
	
	
	//회원가입 
	@RequestMapping(value = "/user/insert.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String userAdd(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		userService.insertUser(map);
		resultMap.put("success", "가입완료");
		return new Gson().toJson(resultMap);
	}
	
	//아이디 중복체크
	@RequestMapping(value = "/user/check.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String check(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		int cnt = userService.userIdCheck(map);
		resultMap.put("cnt", cnt);
		return new Gson().toJson(resultMap);
	}
	
	// 로그인 
		@RequestMapping(value = "/login.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
		@ResponseBody
		public String login(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
			HashMap<String, Object> resultMap = new HashMap<String, Object>();
			resultMap = userService.searchUserLoginAllCheck(map);
			if(resultMap.containsKey("user")) {// 키값이 있다면 true 리턴 없다면 false 리턴
				User user = (User) resultMap.get("user"); // 다운캐스팅
				session.setAttribute("sessionId", user.getUserId()); // 세션 에다가 user 안에 getId 넣기
				session.setAttribute("sessionName", user.getUserName());
				session.setAttribute("sessionStatus", user.getUserState()); 
				session.setAttribute("sessionEmail", user.getUserEmail()); 
			}
			return new Gson().toJson(resultMap);
		}
}

package com.example.sample1.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ManagerController {
	
	@Autowired
	HttpSession session;
	
	/* 관리자페이지 */
	@RequestMapping("/manager.do") 
    public String mypage(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "/managerpage/managermain"; 
    }

	/* 회원 조회/수정 */
	@RequestMapping("/checkedit.do") 
    public String checkedit(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "/managerpage/customercheckedit"; 
    }

	/* 물품 관리 */
	@RequestMapping("/productmanage.do") 
    public String productmanage(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "/managerpage/productmanage"; 
    }
	
	/* 물품 관리 */
	@RequestMapping("/paybackmanage.do") 
    public String paybackmanage(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "/managerpage/paybackmanage"; 
    }
}

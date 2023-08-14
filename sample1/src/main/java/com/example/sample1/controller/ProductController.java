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

import com.example.sample1.model.Test;
import com.example.sample1.service.ProductService;
import com.google.gson.Gson;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class ProductController {
	
	@Autowired
	ProductService productService;
	
	// 상품상세 페이지
	@RequestMapping("/product.do") 
    public String info(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/product/productInfo";
    }
	// 상품구매 페이지
	@RequestMapping("/productBuy.do") 
    public String buy(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/product/productBuy";
    }
	// 상품등록 페이지
	@RequestMapping("/productRegister.do") 
    public String register(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/product/productRegister";
    }
}

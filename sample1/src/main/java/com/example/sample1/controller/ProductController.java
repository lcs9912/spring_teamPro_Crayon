package com.example.sample1.controller;

import java.util.Calendar;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.example.sample1.model.Brand;
import com.example.sample1.service.ProductService;
import com.google.gson.Gson;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
public class ProductController {
	@Autowired
	ProductService productService;
	
	//페이지 할당
	// 상품상세 페이지
	@RequestMapping("/product.do") 
    public String info(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/product/productInfo_LCS"; // _LCS 삭제 
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
	
	// 구매전 페이지
	@RequestMapping("/buybeforeshoes.do") 
	public String buybeforewindow(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
	    return "/product/buybeforeshoes";
	}
	
	// 상의 페이지
	@RequestMapping("/buybeforewear.do") 
	public String buybeforewear(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "/product/buybeforewear";
	}
	
	// 상의 페이지
	@RequestMapping("/buybeforeunderwear.do") 
	public String buybeforeunderwear(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "/product/buybeforeunderwear";
	}
	
	// 구매동의 페이지
	@RequestMapping("/buyagree.do") 
	public String buyagree(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "/product/buyagree";
	}
	
	// 즉시 구매 페이지
	@RequestMapping("/nowbuy.do") 
	public String nowbuy(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "/product/nowbuy";
	}
	
	//.dox
	// 상품 브랜드 조회
	@RequestMapping(value = "/brand.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String brand(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		List<Brand> list = productService.viewBrand(map);
		System.out.println(list.get(0).getpBrand());
		resultMap.put("brand", list);
		return new Gson().toJson(resultMap);
	}
	// 브랜드 이름 직접입력
	@RequestMapping(value = "/addBrand.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String addBrand(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		productService.addBrand(map);
		return new Gson().toJson(resultMap);
	}
	// 상품 등록 
	@RequestMapping(value = "/addProduct.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String addProduct(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		productService.addProduct(map);
		return new Gson().toJson(resultMap);
	}
	// 상품이미지 업로드
	@RequestMapping("/fileUpload.dox")
    public String result(@RequestParam("file1") MultipartFile multi, @RequestParam("idx") int idx, HttpServletRequest request,HttpServletResponse response, Model model)
    {
		/*
		 * String url = null; String path="c:\\img"; try {
		 * 
		 * //String uploadpath = request.getServletContext().getRealPath(path); String
		 * uploadpath = path; String originFilename = multi.getOriginalFilename();
		 * String extName =
		 * originFilename.substring(originFilename.lastIndexOf("."),originFilename.
		 * length()); long size = multi.getSize(); String saveFileName =
		 * genSaveFileName(extName);
		 * 
		 * System.out.println("uploadpath : " + uploadpath);
		 * System.out.println("originFilename : " + originFilename);
		 * System.out.println("extensionName : " + extName);
		 * System.out.println("size : " + size); System.out.println("saveFileName : " +
		 * saveFileName); String path2 = System.getProperty("user.dir");
		 * System.out.println("Working Directory = " + path2 + "\\src\\webapp\\img");
		 * if(!multi.isEmpty()) { File file = new File(path2 +
		 * "\\src\\main\\webapp\\img", saveFileName); multi.transferTo(file);
		 * 
		 * HashMap<String, Object> map = new HashMap<String, Object>();
		 * map.put("filename", saveFileName); map.put("path", "../img/" + saveFileName);
		 * map.put("idx", idx);
		 * 
		 * // insert 쿼리 실행 productService.addProductImg(map);
		 * 
		 * model.addAttribute("filename", multi.getOriginalFilename());
		 * model.addAttribute("uploadPath", file.getAbsolutePath());
		 * 
		 * return "redirect:productRegister.do"; } }catch(Exception e) {
		 * System.out.println(e); }
		 */
        return "redirect:productRegister.do";
    }
	// 현재 시간을 기준으로 파일 이름 생성
    private String genSaveFileName(String extName) {
        String fileName = "";
        
        Calendar calendar = Calendar.getInstance();
        fileName += calendar.get(Calendar.YEAR);
        fileName += calendar.get(Calendar.MONTH);
        fileName += calendar.get(Calendar.DATE);
        fileName += calendar.get(Calendar.HOUR);
        fileName += calendar.get(Calendar.MINUTE);
        fileName += calendar.get(Calendar.SECOND);
        fileName += calendar.get(Calendar.MILLISECOND);
        fileName += extName;
        
        return fileName;
    }//여기까지 지우셈
    
    // 상품 상세정보
// 	@RequestMapping(value = "/productInfo.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
// 	@ResponseBody
// 	public String productInfo(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
// 		HashMap<String, Object> resultMap = new HashMap<String, Object>();
// 		resultMap = productService.searchProductInfo(map);
// 		
// 		return new Gson().toJson(resultMap);
// 	}
}

package com.example.sample1.controller;

import java.io.File;
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

import com.example.sample1.model.Product;
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
        return "/product/productInfo";
    }
	// 상품등록 페이지
	@RequestMapping("/productRegister.do") 
    public String register(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/product/productRegister";
    }
	
	// 구매전 신발 페이지
	@RequestMapping("/buybeforeshoes.do") 
	public String buybeforewindow(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
	    return "/pay/buybeforeshoes";
	}
	// 판매전 신발 페이지
	@RequestMapping("/sellbeforeshoes.do") 
	public String sellbeforewindow(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
	    return "/pay/sellbeforeshoes";
	}
	
	// 구매전 상의 페이지
	@RequestMapping("/buybeforewear.do") 
	public String buybeforewear(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "/pay/buybeforewear";
	}
	// 판매전 상의 페이지
	@RequestMapping("/sellbeforewear.do") 
	public String sellbeforewear(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "/pay/sellbeforewear";
	}
	
	// 구매전 하의 페이지
	@RequestMapping("/buybeforeunderwear.do") 
	public String buybeforeunderwear(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "/pay/buybeforeunderwear";
	}
	// 구매전 하의 페이지
	@RequestMapping("/sellbeforeunderwear.do") 
	public String sellbeforeunderwear(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "/pay/sellbeforeunderwear";
	}
	
	// 구매동의 페이지
	@RequestMapping("/buyagree.do") 
	public String buyagree(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "/pay/buyagree";
	}
	// 판매동의 페이지
	@RequestMapping("/sellagree.do") 
	public String sellagree(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "/pay/sellagree";
	}
	
	// 즉시 구매 페이지
	@RequestMapping("/nowbuy.do") 
	public String nowbuy(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "/pay/nowbuy";
	}
	
	// 최종결제 페이지
	@RequestMapping("/payandpackage.do") 
	public String payandpackage(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "/pay/payandpackage";
	}
	
	// 주문/정산 배송페이지
	@RequestMapping("/orderandsettle.do") 
	public String orderandsettle(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "/pay/orderandsettle";
	}
	//
	@RequestMapping("/nowsell.do") 
	public String sellBuy(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "/pay/nowsell";
	}
	
	//.dox
	//상품 사이즈 조회
	 @RequestMapping(value = "/size.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String size(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		List<Product> list = productService.viewSize(map);
		resultMap.put("size", list);
		return new Gson().toJson(resultMap);
	}
	// 상품 브랜드 조회
	@RequestMapping(value = "/brand.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String brand(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		List<Product> list = productService.viewBrand(map);
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
		resultMap = productService.addProduct(map);
		return new Gson().toJson(resultMap);
	}
	
	// 상품이미지 업로드
	@RequestMapping(value = "/fileUpload.dox")
	public String result(@RequestParam("file1") MultipartFile multi, @RequestParam("productName") String productName, HttpServletRequest request, HttpServletResponse response, Model model) {
	    String url = null;
	    String path = "c:\\img";
	    try {
	        String uploadpath = path;
	        String originFilename = multi.getOriginalFilename();
	        String extName = originFilename.substring(originFilename.lastIndexOf("."), originFilename.length());
	        long size = multi.getSize();
	        String saveFileName = genSaveFileName(extName);

	        String path2 = System.getProperty("user.dir");
	        if (!multi.isEmpty()) {
	        	File file = new File(path2 + "\\src\\main\\webapp\\img\\product", saveFileName);
	            multi.transferTo(file);

	            HashMap<String, Object> map = new HashMap<String, Object>();	
	            map.put("pImgName", saveFileName);
	            map.put("pImgPath", "..\\img\\product\\" + saveFileName); // Set the correct image path
	            map.put("pName", productName);

	            // Insert query execution
	            productService.addProductImg(map);

	            model.addAttribute("pImgName", multi.getOriginalFilename());
	            model.addAttribute("uploadPath", file.getAbsolutePath());

	            return "redirect:mypage.do";
	        }
	    } catch (Exception e) {
	        System.out.println(e);
	    }
	    return "redirect:mypage.do";
	}
	
	// 현재 시간을 기준으로 파일 이름 생성
    private String genSaveFileName(String extName) {
        String pImgName = "";
        
        Calendar calendar = Calendar.getInstance();
        pImgName += calendar.get(Calendar.YEAR);
        pImgName += calendar.get(Calendar.MONTH);
        pImgName += calendar.get(Calendar.DATE);
        pImgName += calendar.get(Calendar.HOUR);
        pImgName += calendar.get(Calendar.MINUTE);
        pImgName += calendar.get(Calendar.SECOND);
        pImgName += calendar.get(Calendar.MILLISECOND);
        pImgName += extName;
        
        return pImgName;
    }
    
    // 상품 상세정보
 	@RequestMapping(value = "/productInfo.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
 	@ResponseBody
 	public String productInfo(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
 		HashMap<String, Object> resultMap = new HashMap<String, Object>();
 		resultMap = productService.searchProductInfo(map);
 		
 		return new Gson().toJson(resultMap);
 	}
 	// 상품 이미지 보여주기
 	@RequestMapping(value = "/productImg.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
 	@ResponseBody
 	public String productImg(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
 		HashMap<String, Object> resultMap = new HashMap<String, Object>();
 		Product img =productService.viewProductImg(map);
 		resultMap.put("img",img);
 		return new Gson().toJson(resultMap);
 	}
 	
 	// 유저 관심상품 조회
   	@RequestMapping(value = "/proInterestInfo.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
   	@ResponseBody
   	public String proInterestInfo(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
   		HashMap<String, Object> resultMap = new HashMap<String, Object>();
   		Product interest = productService.searchInterest(map);
   		resultMap.put("interest", interest);
   		return new Gson().toJson(resultMap);
   	}
   	// 관심상품 등록
   	@RequestMapping(value = "/product/interest.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
   	@ResponseBody
   	public String addInterest(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
   		HashMap<String, Object> resultMap = new HashMap<String, Object>();
   		productService.addInterest(map);

   		return new Gson().toJson(resultMap);
   	}
   	// 관심상품 해제
   	@RequestMapping(value = "/proInterestRemove.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
   	@ResponseBody
   	public String proInterestRemove(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
   		HashMap<String, Object> resultMap = new HashMap<String, Object>();
   		productService.removeInterest(map);

   		return new Gson().toJson(resultMap);
   	}

   	// 최근거래가
   	@RequestMapping(value = "/product/resent.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
   	@ResponseBody
   	public String productResent(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
   		HashMap<String, Object> resultMap = new HashMap<String, Object>();
   		Product resent = productService.searchResentPro(map);
   		resultMap.put("resent", resent);

   		return new Gson().toJson(resultMap);
   	}
 	
}

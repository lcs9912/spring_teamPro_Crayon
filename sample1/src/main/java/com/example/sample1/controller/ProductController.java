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
import jakarta.servlet.http.HttpSession;

@Controller
public class ProductController {
	@Autowired
	HttpSession session;
	@Autowired
	ProductService productService;
	
	// 상품상세 페이지
	@RequestMapping("/product.do") 
    public String info(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		request.setAttribute("map", map);
        return "/product/productInfo";
    }
	// 상품등록 페이지
	@RequestMapping("/productRegister.do") 
    public String register(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		request.setAttribute("map", map);
		String sessionId = (String) session.getAttribute("sessionId"); // 다운캐스팅
		if(sessionId != "" && sessionId != null) {
			return "/product/productRegister";
		} else {
			return "redirect:/login.do";
		}
		
    }
	
	// 구매전 신발 페이지
	@RequestMapping("/buybeforeshoes.do") 
	public String buybeforewindow(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		String sessionId = (String) session.getAttribute("sessionId"); // 다운캐스팅
		if(sessionId != "" && sessionId != null) {
			return "/pay/buybeforeshoes";
		} else {
			return "redirect:/login.do";
		}
		
	}
	// 판매전 신발 페이지
	@RequestMapping("/sellbeforeshoes.do") 
	public String sellbeforewindow(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		String sessionId = (String) session.getAttribute("sessionId"); // 다운캐스팅
		if(sessionId != "" && sessionId != null) {
			return "/pay/sellbeforeshoes";
		} else {
			return "redirect:/login.do";
		}
		
	}
	
	// 구매전 상의 페이지
	@RequestMapping("/buyforsize.do") 
	public String buybeforewear(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		request.setAttribute("map", map);
		String sessionId = (String) session.getAttribute("sessionId"); // 다운캐스팅
		if(sessionId != "" && sessionId != null) {
			return "/pay/buyforsize";
		} else {
			return "redirect:/login.do";
		}
		
	}
	
	// 판매전 상의 페이지
	@RequestMapping("/sellbeforewear.do") 
	public String sellbeforewear(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		request.setAttribute("map", map);
		String sessionId = (String) session.getAttribute("sessionId"); // 다운캐스팅
		if(sessionId != "" && sessionId != null) {
			return "/pay/sellforsize";
		} else {
			return "redirect:/login.do";
		}
		
	}
	
	// 구매전 하의 페이지
	@RequestMapping("/buybeforeunderwear.do") 
	public String buybeforeunderwear(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		String sessionId = (String) session.getAttribute("sessionId"); // 다운캐스팅
		if(sessionId != "" && sessionId != null) {
			return "/pay/buybeforeunderwear";
		} else {
			return "redirect:/login.do";
		}
		
	}
	// 구매전 하의 페이지
	@RequestMapping("/sellbeforeunderwear.do") 
	public String sellbeforeunderwear(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		String sessionId = (String) session.getAttribute("sessionId"); // 다운캐스팅
		if(sessionId != "" && sessionId != null) {
			return "/pay/sellbeforeunderwear";
		} else {
			return "redirect:/login.do";
		}
		
	}
	
	// 구매동의 페이지
	@RequestMapping("/buyagree.do") 
	public String buyagree(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		request.setAttribute("map", map);
		String sessionId = (String) session.getAttribute("sessionId"); // 다운캐스팅
		if(sessionId != "" && sessionId != null) {
			return "/pay/buyagree";
		} else {
			return "redirect:/login.do";
		}
		
	}
	// 판매동의 페이지
	@RequestMapping("/sellagree.do") 
	public String sellagree(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		String sessionId = (String) session.getAttribute("sessionId"); // 다운캐스팅
		if(sessionId != "" && sessionId != null) {
			return "/pay/sellagree";
		} else {
			return "redirect:/login.do";
		}
		
	}
	
	// 즉시 구매 페이지
	@RequestMapping("/nowbuy.do") 
	public String nowbuy(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		request.setAttribute("map", map);
		String sessionId = (String) session.getAttribute("sessionId"); // 다운캐스팅
		if(sessionId != "" && sessionId != null) {
			return "/pay/nowbuy";
		} else {
			return "redirect:/login.do";
		}
		
	}
	
	// 최종결제 페이지
	@RequestMapping("/payandpackage.do") 
	public String payandpackage(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		request.setAttribute("map", map);
		String sessionId = (String) session.getAttribute("sessionId"); // 다운캐스팅
		if(sessionId != "" && sessionId != null) {
			return "/pay/payandpackage";
		} else {
			return "redirect:/login.do";
		}
		
	}
	
	// 주문/정산 배송페이지
	@RequestMapping("/orderandsettle.do") 
	public String orderandsettle(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		String sessionId = (String) session.getAttribute("sessionId"); // 다운캐스팅
		if(sessionId != "" && sessionId != null) {
			return "/pay/orderandsettle";
		} else {
			return "redirect:/login.do";
		}
		
	}
	//
	@RequestMapping("/nowsell.do") 
	public String sellBuy(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		String sessionId = (String) session.getAttribute("sessionId"); // 다운캐스팅
		if(sessionId != "" && sessionId != null) {
			return "/pay/nowsell";
		} else {
			return "redirect:/login.do";
		}
		
	}
	
	//
	//상품 사이즈 조회
	 @RequestMapping(value = "/size.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String size(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		List<Product> list = productService.viewSize(map);
		resultMap.put("size", list);
		return new Gson().toJson(resultMap);
	}
	//상품 사이즈 조회
	 @RequestMapping(value = "/pay/size.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String paySize(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		Integer size = productService.viewPaySize(map);
		resultMap.put("size", size);
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
 	@RequestMapping(value = "/productList.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
 	@ResponseBody
 	public String productList(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
 		HashMap<String, Object> resultMap = new HashMap<String, Object>();
 		resultMap = productService.searchProductInfo(map);
 		
 		return new Gson().toJson(resultMap);
 	}
 	// 상품 상세정보 proNum 조건 
  	@RequestMapping(value = "/productInfo.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
  	@ResponseBody
  	public String productInfo(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
  		HashMap<String, Object> resultMap = new HashMap<String, Object>();
  		List<Product> info = productService.searchProBuyInfo(map);
  		resultMap.put("info", info);
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
   	// 상품 SELL 리스트 출력
   	@RequestMapping(value = "/productSellList.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
   	@ResponseBody
   	public String productSellList(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
   		HashMap<String, Object> resultMap = new HashMap<String, Object>();
   		List<Product> sellList = productService.searchProductSellList(map);
   		resultMap.put("sellList", sellList);
   		return new Gson().toJson(resultMap);
   	}
   	
   	// 상품 BUY 리스트 출력
   	@RequestMapping(value = "/productBuyList.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
   	@ResponseBody
   	public String productBuyList(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
   		HashMap<String, Object> resultMap = new HashMap<String, Object>();
   		List<Product> buyList = productService.selectProductBuyList(map);
   		resultMap.put("buyList", buyList);
   		return new Gson().toJson(resultMap);
   	}

   	// 유저 즉시구매
   	@RequestMapping(value = "/payandpackage.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
   	@ResponseBody
   	public String payandpackage(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
   		HashMap<String, Object> resultMap = new HashMap<String, Object>();
   		productService.userProductNowBuy(map);
   		
   		return new Gson().toJson(resultMap);
   	}
   
 	
}

package controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.ProductDao;
import dao.ProductQnaDao;
import dto.Product;
import dto.ProductQna;


@Controller
@RequestMapping("/item")
public class ItemInfoController {

	private ProductDao productdao;
	private ProductQnaDao productQnaDao; 
	
	public ItemInfoController iteminfo(ProductDao productdao) {
		this.productdao = productdao;
		return this;
	}
	
	public ItemInfoController setproductQna(ProductQnaDao productQnaDao) {
		this.productQnaDao = productQnaDao;
		return this;
	}	
	
//	@RequestMapping("/image")
//	public String image(@RequestParam(value="prod_cd")int code,
//			@RequestParam(value="image")int image_num,Model model) throws Exception{
//		
//		/*
//		 * int code = Integer.parseInt(request.getParameter("prod_cd")); int image_num =
//		 * Integer.parseInt(request.getParameter("image"));
//		 */
//		System.out.println("code��"+code);
//		
//		System.out.println("�̹����ѹ���"+image_num);
//		
//		List<Product> iteminfo = productdao.selectitem(code);
//		
//		model.addAttribute("image_num", image_num);
//		model.addAttribute("iteminfo", iteminfo);
//		
//		return "redirect:iteminfo";		
//		
//	}
	
	
	
	@RequestMapping(method = RequestMethod.GET)
	public String form(HttpSession session,HttpServletRequest request,Model model) throws Exception {
		
	 int code = Integer.parseInt(request.getParameter("prod_cd"));  
	 int image_num = Integer.parseInt(request.getParameter("image"));
	 int page = Integer.parseInt(request.getParameter("page"));
	 int inpage = page;
	 
	 
	 // 구매하면 세션하나가 생성 되는데, 구매 페이지에서 아이템 정보 페이지로 넘기는 부분을 체크 하는 구간.
	 // 세션이 남아 있으면 삭제한다.
		if(session.getAttribute("itempay") != null) {
			 session.removeAttribute("itempay"); 
		}
	 
	 
	 //페이징 부분
	 if(page != 1) page = ((page*6)-5);
	 
	 	// 아이템 제품 뽑기
	 	int total = productQnaDao.selectcount(code);
	 	List<Product> iteminfo = productdao.selectitem(code);
	 	// QNA 리스트 뽑기
	 	List<ProductQna> qnalist = productQnaDao.selectlist(code,page);
	 	
	 	
		if((total%6) != 0) {
			page = (total/6)+1;
		}
		else {
			if((total/6) == 0){
				page = 1;
			}
			else page = total/6;
		} 
	 	
		// QNA 부분
		model.addAttribute("inpage",inpage);
		model.addAttribute("page", page);
	 	model.addAttribute("qnalist", qnalist);
	 	
	 	// 제품 상세 페이지 부분
		model.addAttribute("image_num", image_num);
		model.addAttribute("iteminfo", iteminfo);
				 
	 return "/iteminfo";	
	}
	

//	@RequestMapping(method = RequestMethod.GET)
//	public String form(@RequestParam(value="prod_cd")int code,Model model) throws Exception {
//		
//		List<Product> iteminfo = productdao.selectitem(code);
//		
//		
//		
//		int image_num = 2;
//		
//		model.addAttribute("image_num", image_num);
//		model.addAttribute("iteminfo", iteminfo);
//		
//		return "/iteminfo";
//		
//	}
	
	
	@ResponseBody
	@RequestMapping(method = RequestMethod.POST , consumes = MediaType.APPLICATION_JSON_VALUE, produces  = MediaType.APPLICATION_JSON_VALUE)
	public List<ProductQna> qnalist(@RequestBody Map<String,Object> parms){
		
		
		return null;
		
		
	}
	
}

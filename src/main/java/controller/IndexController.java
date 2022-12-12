package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.ProductDao;
import dto.Product;

@Controller
@RequestMapping("/index")
public class IndexController {

	private ProductDao productdao;
	

	public IndexController setindex(ProductDao productdao) {
		this.productdao = productdao;
		return this;
	}
	
	
	@RequestMapping("/dd")
	@ResponseBody
	public String fofo() {
		
		System.out.println("dddddd");
		
		return null;
	}
	
	
	
	@RequestMapping(method = RequestMethod.GET)
	public String form(HttpSession session, Model model) throws Exception {
		
		List<Product> productBest = null;
		List<Product> productNew = null;
		
		 // 구매하면 세션하나가 생성 되는데, 구매 페이지에서 메인 페이지로 넘기는 부분을 체크 하는 구간.
		 // 세션이 남아 있으면 삭제한다.
		if(session.getAttribute("itempay") != null) {
			 session.removeAttribute("itempay"); 
		}
		
		// best, new
	//	productBest = productdao.selectNewBest("y","n");
	//	productNew = productdao.selectNewBest("n","y");
		productBest = productdao.selectbestlist();
		productNew = productdao.selectnewlist();
		
		model.addAttribute("productBest",productBest);
		model.addAttribute("productNew",productNew);
		
		return "/index";
	}
	
}

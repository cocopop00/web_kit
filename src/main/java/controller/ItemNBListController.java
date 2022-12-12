package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import dao.ProductDao;
import dto.Product;

@Controller
@RequestMapping("/itemnblist")
public class ItemNBListController {

	ProductDao productdao;
	
	public ItemNBListController setitemnblist(ProductDao productdao) {
		this.productdao = productdao;
		return this;
	}
	
	
	@RequestMapping(method = RequestMethod.GET)
	public String form(HttpServletRequest request,Model model) throws Exception {
		
		int  page = Integer.parseInt(request.getParameter("page"));
		String best = request.getParameter("best");
		String news = request.getParameter("news");
		int yn = 0;
		int total = 0;
		List<Product> productlist = null;
		
		if(page != 1) page = ((page*12)-11);
		// 베스트상품, 신상품 비교 하는 부분.
		//=======================================================
		
		if(best.equals("y") && news.equals("n")) {
			yn = 1;
		}
		else if(best.equals("n") && news.equals("y")) {
			yn = 2;
		}
		else {return "/index";}
		
		//=======================================================
		
		productlist = productdao.selectNewBest(best,news,page);
		total = productdao.selectyncount(best, news);
		
		if((total%12) != 0) {
			page = (total/12)+1;
		}
		else {
			if((total/12) == 0){
				page = 1;
			}
			else page = total/12;
		} 
		
		model.addAttribute("page", page);
		model.addAttribute("yn",yn);
		model.addAttribute("productlist", productlist);
		
		return "/itemNBlist";
		
	}
	
	
}

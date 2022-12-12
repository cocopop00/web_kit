package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.ProductDao;
import dao.ProductQnaDao;
import dto.Event;
import dto.Product;

@Controller
@RequestMapping("/search")
public class SearchlistController {

	private ProductDao productDao;
	
	public SearchlistController setproductdao(ProductDao productDao) {
		this.productDao = productDao;
		return this;
	}
	
	
	@RequestMapping(method = RequestMethod.GET)
	public String formlist(HttpServletRequest request,Model model) {
		
		String searchrsult = request.getParameter("searchrsult");
		int page = Integer.parseInt(request.getParameter("page"));
		
		System.out.println("°Ë»öÃ¢");
		System.out.println(searchrsult);
		
		List<Product> productlist = null;
			
		if(page != 1) page = ((page*12)-11);
			
		int total = productDao.selectsearchcount(searchrsult);
		productlist = productDao.selectsearch(searchrsult, page);
		
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
		model.addAttribute("title", searchrsult);
		model.addAttribute("productlist",productlist);
		
		return "searchitemlist";
	}
	
}

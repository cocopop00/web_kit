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
@RequestMapping("/itemlist")
public class ItemListController {

	private ProductDao productdao;
	
	public ItemListController setitemlist(ProductDao productdao) {
		this.productdao = productdao;
		return this;
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public String form(HttpServletRequest request, Model model) throws Exception {
		
		int kind = Integer.parseInt(request.getParameter("kind"));
		int page = Integer.parseInt(request.getParameter("page"));
		
			List<Product> productlist = null;
			
			if(page != 1) page = ((page*12)-11);
			
			int total = productdao.selectcount(kind);
			productlist = productdao.selectkind(kind,page);
			
			
		//	System.out.println("총숫자"+total);
//			for(int i = 0; i < productlist.size(); i++) {
//				System.out.println(productlist.get(i).getItem_name());			}
			
			if((total%12) != 0) {
				page = (total/12)+1;
			}
			else {
				if((total/12) == 0){
					page = 1;
				}
				else page = total/12;
			} 
				
			
			//System.out.println("페이지"+page);
			
			model.addAttribute("page", page);
			model.addAttribute("kind", kind);
			model.addAttribute("productlist",productlist);
		
		return "/itemlist";
	}
		
}

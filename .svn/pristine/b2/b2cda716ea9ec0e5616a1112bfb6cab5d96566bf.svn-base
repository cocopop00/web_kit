package controller;

import java.util.List;

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
	public String form(Model model) throws Exception {
		
		List<Product> productBest = null;
		List<Product> productNew = null;
		
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

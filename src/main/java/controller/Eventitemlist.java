package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.EventDao;
import dao.ProductDao;
import dto.Event;
import dto.Product;


@Controller
@RequestMapping("/eventitemlist")
public class Eventitemlist {

	private EventDao eventdao;
	private ProductDao productdao;
	
	public Eventitemlist setevendao(EventDao eventdao) {
		this.eventdao = eventdao;
		return this;
	}
	
	public Eventitemlist setproductdao(ProductDao productdao) {
		this.productdao = productdao;
		return this;
	}
	
	
	
	@RequestMapping(method = RequestMethod.GET)
	public String form(HttpServletRequest request, Model model) throws Exception {
		
		int eventcd = Integer.parseInt(request.getParameter("event_cd"));
		int page = Integer.parseInt(request.getParameter("page"));
		
		List<Product> productlist = null;
		List<Event> event = null;
			
		if(page != 1) page = ((page*12)-11);
			
		int total = productdao.selecteventcount(eventcd);
		productlist = productdao.selectevent(eventcd,page);
		event = eventdao.selectone(eventcd);
		
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
			model.addAttribute("title", event);
			model.addAttribute("productlist",productlist);
		
		return "/eventitemlist";
	}
	
}

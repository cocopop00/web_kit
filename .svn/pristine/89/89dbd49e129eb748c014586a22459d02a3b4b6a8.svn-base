package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import dao.CartListDao;
import dto.CartList;
import dto.Member;



@Controller
//@RequestMapping("gocart")
public class GoCartController {
	
	private CartListDao cartlistDao;

	public GoCartController setCartListDao(CartListDao cartlistDao) {
		this.cartlistDao = cartlistDao;
		return this;
	}


//	@RequestMapping(method = RequestMethod.GET)
//	@GetMapping(value="gocart")
//	public String form() {
//		return "gocartform";
//	}
	
	
	@GetMapping(value="insert")
	public String submit(HttpSession session,
			@RequestParam("pseq")int pseq,@RequestParam("quantity")int quantity,Model model)throws Exception{
		Member member=(Member)session.getAttribute("authInfo");
		if(session.getAttribute("authInfo") == null){
			return "loginform";
		}
		else {
			CartList cartlist = new CartList();
			cartlist.setEmail(member.getEmail());
			cartlist.setProdcd(pseq);
			cartlist.setQuantity(quantity);
			
			CartList cart=new CartList();
			
			
			cart = cartlistDao.selectOne(cartlist);

			if(cart==null) {
				cartlistDao.insert(pseq, member.getEmail(), quantity);
			}
			else {
				cartlistDao.update(pseq, member.getEmail(), quantity,cart.getQuantity());
			}
			
			
			
			
//			list.get(0).getEmail();
			
			return "gocartform";
		}
	}
		
		
		
		

}
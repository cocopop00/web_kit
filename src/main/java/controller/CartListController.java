package controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.CartListDao;
import dto.CartList;
import dto.Member;


@Controller
public class CartListController {

	private CartListDao cartlistDao;

	public CartListController setCartListDao(CartListDao cartlistDao) {
		this.cartlistDao = cartlistDao;
		return this;
	}
	
	@GetMapping(value="cartlist")
	public String list(Model model,HttpSession session,HttpServletRequest request) throws Exception {
		Member member=(Member)session.getAttribute("authInfo");
		if(session.getAttribute("authInfo") == null){
			return "loginform";
		}
		else {
			model.addAttribute("cartlist", cartlistDao.selectCart(member.getEmail()));

			return "cartlist";
		}
	}
	
	
	
	@GetMapping(value="insert")
	public String submit_insert(HttpSession session,@RequestParam("pseq")int pseq,@RequestParam("quantity")int quantity,Model model)throws Exception{
		Member member=(Member)session.getAttribute("authInfo");
		if(session.getAttribute("authInfo") == null){
			return "gocartform";
		}
		else {
			CartList cartlist = new CartList();
			CartList cart=new CartList();
			cartlist.setEmail(member.getEmail());
			cartlist.setProdcd(pseq);
			cartlist.setQuantity(quantity);
			cart = cartlistDao.selectOne(cartlist);
			if(cart==null) {
				cartlistDao.insert(pseq, member.getEmail(), quantity);
			}
			else {
				cartlistDao.update(pseq, member.getEmail(), quantity,cart.getQuantity());
			}
			return "gocartform";
		}
	}
	
	@GetMapping(value="cartUpdate")
	public String submit_update(HttpSession session,@RequestParam("pseq")int pseq,@RequestParam("quantity")int quantity,Model model)throws Exception{
		Member member=(Member)session.getAttribute("authInfo");
		if(session.getAttribute("authInfo") == null){
			return "loginform";
		}
		else {
			cartlistDao.update_delete(pseq, member.getEmail(), quantity);
			return "redirect:cartlist";
		}
	}
	
	@GetMapping(value="cartDelete")
	public String submit_delete(HttpSession session,HttpServletRequest request,Model model)throws Exception{
		Member member=(Member)session.getAttribute("authInfo");
		if(session.getAttribute("authInfo") == null){
			return "loginform";
		}
		else {
			String[] pseqArr=request.getParameterValues("pseq");
			
			if(pseqArr!=null) {
				for(String pseq:pseqArr) {
					cartlistDao.delete(Integer.parseInt(pseq),member.getEmail());
				}
			}
			return "redirect:cartlist";
		}
		
			
		}
	@GetMapping(value="cartDelete1")
	public String submit_delete1(HttpSession session,Model model,@RequestParam("pseq")int pseq)throws Exception{
		Member member=(Member)session.getAttribute("authInfo");
		if(session.getAttribute("authInfo") == null){
			return "loginform";
		}
		else {
			
			cartlistDao.delete(pseq, member.getEmail());
			return "redirect:cartlist";
		}
		
			
		}
	
//	@GetMapping(value="cartPrice")
//	public String price(Model model,HttpSession session,HttpServletRequest request,@RequestParam("pseq")int pseq) throws Exception {
//		Member member=(Member)session.getAttribute("authInfo");
//		if(session.getAttribute("authInfo") == null){
//			return "loginform";
//		}
//		int sum=0;
//		try {
//			CartList cartlist=new CartList();
//			CartList cart=new CartList();
//			
//			System.out.println(pseq);
//			cartlist.setEmail(member.getEmail());
//			cartlist.setProdcd(pseq);
//			cart = cartlistDao.selectOne(cartlist);
//			sum+=cart.getQuantity()*cart.getSaleprice();
//			
//			model.addAttribute("cartprice", sum);
//			
//		}catch(Exception e){
//			e.printStackTrace();
//		}
//
//		return "cartlist";
//	}
	

}

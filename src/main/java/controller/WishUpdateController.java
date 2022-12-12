package controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.WishListDao;
import dto.Member;

@Controller
@RequestMapping("wishUpdate")
public class WishUpdateController {
	private WishListDao wishlistDao;

	public WishUpdateController setWishListDao(WishListDao wishlistDao) {
		this.wishlistDao = wishlistDao;
		return this;
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public String submit(Model model,HttpSession session,@RequestParam("pseq")int pseq) 
			throws Exception {
		Member member=(Member)session.getAttribute("authInfo");
		if(member == null){
			return "loginform";
		}
		else {
			System.out.println("삭제하기 ");
			wishlistDao.delete(pseq,member.getEmail());
		}
		model.addAttribute("wishlist", wishlistDao.selectWish(member.getEmail()));
		return "redirect:wishlist";
	}
	
}

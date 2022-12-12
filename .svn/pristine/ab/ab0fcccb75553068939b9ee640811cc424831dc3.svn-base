package controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import dao.WishListDao;
import dto.Member;
import dto.WishList;


@Controller
public class WishListController {
	private WishListDao wishlistDao;

	public WishListController setWishListDao(WishListDao wishlistDao) {
		this.wishlistDao = wishlistDao;
		return this;
	}
	
	@GetMapping(value="wishinsert")
	public String form(Model model,HttpSession session,@RequestParam("pseq")int pseq) 
			throws Exception {
		Member member=(Member)session.getAttribute("authInfo");
		if(member == null){
			return "loginform";
		}
			WishList wishlists = new WishList();
			wishlists.setEmail(member.getEmail());
			wishlists.setProdcd(pseq);
			
			WishList wish=new WishList();
			wish = wishlistDao.selectOne(wishlists);
			
			if(wish==null) {
				wishlistDao.insert(pseq,member.getEmail());
			}else {
				System.out.println("이미 찜한 상품입니다.");
			}
		return "redirect:wishlist";
	}
	
	
	@GetMapping(value="wishlist")
	public String list(Model model,HttpSession session) throws Exception {
		Member member=(Member)session.getAttribute("authInfo");
		if(session.getAttribute("authInfo") == null){
			return "loginform";
		}
		else {
			model.addAttribute("wishlist", wishlistDao.selectWish(member.getEmail()));
			return "wishlist";
		}
		
	}
	
	
}

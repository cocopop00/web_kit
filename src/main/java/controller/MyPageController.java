package controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.MemberDao;
import dao.ProductQnaDao;
import dao.ReviewDao;
import dto.Member;

@Controller
//@RequestMapping("/Mypage")
public class MyPageController {
	private MemberDao memberDao;
	private ReviewDao reviewDao;
	private ProductQnaDao productQnaDao; 
	
	public MyPageController setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
		return this;
	}
	
	public MyPageController setreviewdao(ReviewDao reviewDao) {
		this.reviewDao = reviewDao;
		return this;
	}
	
	public MyPageController setproductQna(ProductQnaDao productQnaDao) {
		this.productQnaDao = productQnaDao;
		return this;
	}
	

	@RequestMapping(value="/Mypage", method = RequestMethod.GET)
	public String form(Model model, HttpSession session) throws Exception {

		Member member = (Member) session.getAttribute("authInfo");

		if (session.getAttribute("authInfo") == null) {
			return "loginform";
		} else {
			model.addAttribute("cartlist", memberDao.selecteOne(member.getEmail()));
			return "Mypageform";

		}
		
	}
	
	
	@RequestMapping("/Myreview")
	public String review(Model model, HttpSession session) throws Exception {

		Member member = (Member) session.getAttribute("authInfo");

		if (session.getAttribute("authInfo") == null) {
			return "loginform";
		} else {
			
			model.addAttribute("reviewlist", reviewDao.selectmyreview(member.getEmail()));
			return "myreview";

		}
		
	}
	
	
	
	@RequestMapping("/Myitemqna")
	public String itemqna(Model model, HttpSession session) throws Exception {

		Member member = (Member) session.getAttribute("authInfo");

		if (session.getAttribute("authInfo") == null) {
			return "loginform";
		} else {
			
			model.addAttribute("qnalist", productQnaDao.selectmyqna(member.getEmail()));
			
			
			return "myitemqna";

		}
		
	}
	
	
	
	
	
	
}
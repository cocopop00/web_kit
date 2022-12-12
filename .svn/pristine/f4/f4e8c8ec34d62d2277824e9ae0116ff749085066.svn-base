package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.OrderListDao;
import dao.ReviewDao;
import dto.Member;
import dto.OrderList;
import dto.Review;

@Controller
@RequestMapping("/reviewlist")
public class ReviewlistController {

	private ReviewDao reviewDao;
	private OrderListDao orderListDao;
	
	public ReviewlistController setreviewdao(ReviewDao reviewDao) {
		this.reviewDao = reviewDao;
		return this;
	}
	
	public ReviewlistController setorderlistdao(OrderListDao orderListDao) {
		this.orderListDao = orderListDao;
		return this;
	}	
	
	@RequestMapping(method = RequestMethod.GET)
	public String form(HttpServletRequest request,Model model) {
		
			int page = Integer.parseInt(request.getParameter("page"));

			if(page != 1) page = ((page*12)-11);
			
			int total = reviewDao.selectcount();
			List<Review> reviewlist = reviewDao.selectlist(page);
		
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
			model.addAttribute("reviewlist",reviewlist);
		
			return "Reviewlist";

	}
	
	
}

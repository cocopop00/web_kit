package controller;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import dao.ReviewDao;
import dto.Review;

@Controller
//@RequestMapping("/reviewdetail")
public class ReviewDetailController {

	private ReviewDao reviewDao;
	

	public ReviewDetailController setreviewdao(ReviewDao reviewDao) {
		this.reviewDao = reviewDao;
		return this;
	}
	
	
	
	@RequestMapping(value= "/reviewdetail", method = RequestMethod.GET)
	public String form(HttpServletRequest request,Model model) {
		
		int number = Integer.parseInt(request.getParameter("review"));
		List<Review> re = null;
		re = reviewDao.selectreviewdetail(number);
		int imagesize = re.size();
		
		model.addAttribute("imagesize", imagesize);
		model.addAttribute("reviewdetail", re);
		
		return "ReviewDetail";
	}
	
	
	
	@RequestMapping(value="/image", method = RequestMethod.GET)
	public String imageview(HttpServletRequest request, Model model){
		
		String imagename = request.getParameter("imagename");
		
		
		model.addAttribute("image", imagename);
		return "Reviewimage";
	}

	
	@RequestMapping(value="/recomck")
	public String recomck(HttpServletRequest request, Model model,RedirectAttributes redirect,HttpServletResponse res){
		
		
		List<Review> re = null;
		// 리뷰코드
		int reviewcd = Integer.parseInt(request.getParameter("reviewcd"));
		// 추천수
		int recomnum = Integer.parseInt(request.getParameter("recom"));
		
		// 쿠키 유무 변수
		int buf = 0;
		
		re = reviewDao.selectreviewdetail(reviewcd);
		int imagesize = re.size();
		// 쿠키 이름과 값. (code+event_cd(이벤트값)으로 이벤트 페이지 마다 조회수 확인)
		String ckcode= "code"+reviewcd;
		
		// 쿠키 가져오기.
		Cookie[] cookies = request.getCookies();
		
		// 중복 쿠키 있는지 확인.
		if(cookies!=null) {
			for(Cookie c : cookies) {
				String name = c.getName();
				String value = c.getValue();
				if(name.equals(ckcode)) {
					buf = 1;
				}
			}
		}
		
		// 쿠키가 없으면 새로 설정.
		if(buf == 0) {
		
			// 쿠키 설정.
			Cookie cookie = new Cookie(ckcode,ckcode);
			// 유효기간 하루 설정. (60초, 60분, 24시간) -> 테스트를 위해
			cookie.setMaxAge(60*60*24);
			// 모든 경로에 접근 가능하도록 설정.
			cookie.setPath("/");
			// 쿠키 추가
			res.addCookie(cookie);			

			 buf = reviewDao.updaterecom(recomnum,reviewcd);
				
			 re = reviewDao.selectreviewdetail(reviewcd);
			 
			if(buf != -1) {
				model.addAttribute("imagesize", imagesize);
				model.addAttribute("reviewdetail", re);
				return "ReviewDetail";
			}
			else {
				model.addAttribute("imagesize", imagesize);
				model.addAttribute("reviewdetail", re);
				System.out.println("업데이트 오류 오류!");
				return "ReviewDetail";
			}
		
		}
		
		model.addAttribute("imagesize", imagesize);
		model.addAttribute("reviewdetail", re);
		//model.addAttribute("image", imagename);
		return "ReviewDetail";
	}	
	
	
	
	
}

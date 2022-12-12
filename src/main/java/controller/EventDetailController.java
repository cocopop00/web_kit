package controller;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.EventDao;
import dto.Event;

@Controller
@RequestMapping("/eventde")
public class EventDetailController {

	private EventDao eventdao;
	

	public EventDetailController seteventdetail(EventDao eventdao) {
		this.eventdao = eventdao;
		return this;
	}
	
	
	
	@RequestMapping(method = RequestMethod.GET)
	public String form(HttpServletRequest request,Model model,HttpServletResponse res) throws Exception {
		
		int code = Integer.parseInt(request.getParameter("event_cd"));
		int count = Integer.parseInt(request.getParameter("recom_num"));
		List<Event> eventdetail = null;
		// 쿠키 유무 변수
		int buf = 0;
		
		// 쿠키 이름과 값. (code+event_cd(이벤트값)으로 이벤트 페이지 마다 조회수 확인)
		String ckcode= "code"+code;
		
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

			int but = eventdao.eventyn_update(code,count);
				
			if(but != -1) {
				
				eventdetail = eventdao.selectone(code);
				// 이미지 개수 찾는 변수
				int image_num = eventdetail.size();
	
				//System.out.println("이미지 개수는" + image_num);
			
				model.addAttribute("eventdetail", eventdao.selectone(code));
				model.addAttribute("image_num",image_num);
				
				return "/eventDetail";
			}
			else {
				System.out.println("업데이트 오류 오류!");
				return "/eventDetail";
			}
		
		}
		
		// 기존 쿠키가 존재하면 여기로.
		eventdetail = eventdao.selectone(code);
		// 이미지 개수 찾는 변수
		int image_num = eventdetail.size();
	
		model.addAttribute("eventdetail", eventdao.selectone(code));
		model.addAttribute("image_num",image_num);
		
		return "/eventDetail";
		
	}
	
	
	@RequestMapping(method = RequestMethod.POST)
	public String submit(Model model) throws Exception {
		
		//model.addAttribute("eventlist",eventdao.selectList());
		
		return "/eventDetail";
		
	}
	
}

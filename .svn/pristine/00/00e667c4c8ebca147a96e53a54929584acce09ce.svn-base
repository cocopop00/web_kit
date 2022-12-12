package controller;



import javax.servlet.http.HttpServletRequest;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.EventDao;
import dto.Event;


@Controller
@RequestMapping("/event")
public class EventListController {
	
	private EventDao eventdao;
	

	public EventListController seteventlist(EventDao eventdao) {
		this.eventdao = eventdao;
		return this;
	}
	
	

	@RequestMapping(method = RequestMethod.GET)
	public String form(HttpServletRequest request,Model model) throws Exception {
		
		String yn = request.getParameter("eventyn");
		Event eventnum = new Event();
		int page = 0;

		eventnum = eventdao.selectyn_count();
		
		// yn 값이 없으면 전체 리스트 불러오기
		if(yn == null) {
				page = 1;
				
				model.addAttribute("eventlist",eventdao.selectList(page));
				
				eventnum.setPage_mode("a");
				
		}// y : 진행중 이벤트 ,n : 종료된 이벤트 버튼 눌러 pram값이 어느쪽이냐에 따라 리스트 불러오기 
		else if(yn.equals("y") || yn.equals("n")){
			
			 	page = Integer.parseInt(request.getParameter("page"));
	
			 	if(page != 1) page = ((page*5)-4);
			 	
				model.addAttribute("eventlist",eventdao.selectone_list(yn,page));
				
				
				if(yn.equals("y")) {
					if((eventnum.getY()%5) != 0) {
						eventnum.setPage((eventnum.getY()/5)+1);
					}else {
						if((eventnum.getY()/5) == 0) {
							eventnum.setPage(1);
						}
						else {
							eventnum.setPage(eventnum.getY()/5);
						}
					} 
				}
				else {
					if((eventnum.getN()%5) != 0) {
						eventnum.setPage((eventnum.getN()/5)+1);
					}else {
						if((eventnum.getN()/5) == 0) {
							eventnum.setPage(1);
						}
						else eventnum.setPage(eventnum.getN()/5);
					} 
				}

				eventnum.setPage_mode(yn);
				
				model.addAttribute("eventnum", eventnum);
				
				return "/eventList";
				
		}// a는 전체 리스트 가져오기 
		else if(yn.equals("a")) {
			
				page = Integer.parseInt(request.getParameter("page"));
				
				if(page != 1) page = ((page*5)-4);
				
				model.addAttribute("eventlist",eventdao.selectList(page));
				
				eventnum.setPage_mode(yn);
		}
		
		
		if((eventnum.getTotal()%5) != 0) {
			eventnum.setPage((eventnum.getTotal()/5)+1);
		}else {
			if((eventnum.getTotal()/5) == 0){
				eventnum.setPage(1);
			}
			else {
				eventnum.setPage(eventnum.getTotal()/5);
			}
		}
		
		model.addAttribute("eventnum", eventnum);
	
		return "/eventList";
		
	}


	
	@RequestMapping(method = RequestMethod.POST)
	public String form(@RequestParam(value="event_cd")int num) throws Exception {
		
		//Event event = new Event();
		//event = eventdao.selectone(num);
		
		return "/eventDetail";
		
	}


	
	
}

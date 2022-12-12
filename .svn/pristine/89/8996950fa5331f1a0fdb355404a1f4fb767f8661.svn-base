package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.NoticeDao;
import dto.Notice;

@Controller
@RequestMapping("noticedetail")
public class NoticeDetailController {
private NoticeDao noticedao;
	
	public NoticeDetailController setnoticedetail(NoticeDao noticedao) {
		this.noticedao = noticedao;
		System.out.println("start");
		return this;
		
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public String form(HttpServletRequest request, Model model) throws Exception {
		int noticd = Integer.parseInt(request.getParameter("noticd"));
		System.out.println("in1-------------------");
		System.out.println(noticd);
		/* model.addAttribute("noticelist", noticedao.selectList()); */
		List<Notice> notice = noticedao.selectDetail(noticd);
		
		for(int i=0; i<notice.size(); i++) {
			notice.get(i).getImage();
			System.out.println(notice);
		}
		
		model.addAttribute("noticedetail", notice);
		System.out.println("in2" + model + "n" + noticd);
		System.out.println();
		return "/noticedetail";
		
	}
	@RequestMapping(method = RequestMethod.POST)
	public String form(@RequestParam(value="noticecd")int num) throws Exception {
		
		return "/noticedetail";
		
	}
}

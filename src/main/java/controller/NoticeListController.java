package controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.NoticeDao;

@Controller
@RequestMapping("/noticelist")
public class NoticeListController {
	private NoticeDao noticedao;
	
	public NoticeListController setnoticelist(NoticeDao noticedao) {
		this.noticedao = noticedao;
		System.out.println("start");
		return this;
		
	}

	@RequestMapping(method = RequestMethod.GET)
	public String noticelist(Model model) throws Exception {
		System.out.println("in");
		/* model.addAttribute("noticelist", noticedao.selectList()); */
		model.addAttribute("noticelist", noticedao.selectList()); 
		System.out.println("in2");
		return "/noticelist";
		
	}
	@RequestMapping(method = RequestMethod.POST)
	public String form(@RequestParam(value="notice_cd")int num) throws Exception {
		
		return "/noticeDetail";
		
	}

}

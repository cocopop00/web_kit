package controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.QnaDao;
import dto.Member;

@Controller
@RequestMapping("qnalist")
public class QnaListController {
	private QnaDao qnadao;
	
	public QnaListController setQnaDao(QnaDao qnaDao) {
		this.qnadao = qnaDao;
		return this;
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public String qnalist(Model model,HttpSession session) throws Exception {
		Member member=(Member)session.getAttribute("authInfo");
		
		if(session.getAttribute("authInfo") == null) {
			return "loginform";
					
		}
		else {
			model.addAttribute("qnalist", qnadao.selectList(member.getEmail()));
			return "/qnalist";
		}
		
	}
	@RequestMapping(method = RequestMethod.POST)
	public String form(@RequestParam(value="qna_cd")int num) throws Exception {
		return "/qnaadd";
	}
	
}

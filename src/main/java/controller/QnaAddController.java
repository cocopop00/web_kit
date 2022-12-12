package controller;


import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.QnaDao;
import dto.Member;
import dto.Qna;

@Controller
public class QnaAddController {
	private QnaDao qnaDao;
	
	public QnaAddController setQnaDao(QnaDao qnaDao) {
		this.qnaDao = qnaDao;
		return this;
	}
	@RequestMapping("qnaaddform")
	public String form(Model model, HttpSession session) {
		Member member=(Member)session.getAttribute("authInfo");
		
		if(session.getAttribute("authInfo") == null) {
			return "loginform";
					
		}
		else {
			model.addAttribute("email", member.getEmail());
			return "qnaaddform";
		}
		
		//model.addAttribute("email", member.getEmail());
		//return "qnaaddform";
	}
	
	@PostMapping("qnaadd")
	public String submit(Qna qna) {
		
		try {
	
			int result = qnaDao.insert(qna);
	
			if(result != 1) {
				return "redirect:qnalist";
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return "redirect:qnalist";
	}
	
	/*@RequestMapping()
	public String submit(Qna qna, HttpServletRequest req, Model model) throws Exception {
//		int qnacd = Integer.parseInt(req.getParameter("qnacd"));
		try {
			
			qnaDao.insert(qna);
		
			model.addAttribute("qnaadd", qna);
			System.out.println("model" + model);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:qnalist";
	}
	*/
	
}

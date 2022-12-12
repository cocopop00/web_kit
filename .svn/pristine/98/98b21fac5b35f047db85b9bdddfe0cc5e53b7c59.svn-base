package controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.QnaDao;
import dto.Member;
import dto.Qna;

@Controller
@RequestMapping("delete")
public class QnaDeleteController {
	private QnaDao qnaDao;
	public QnaDeleteController setQnaDao(QnaDao qnaDao) {
		this.qnaDao = qnaDao;
		return this;
	}
	
	@RequestMapping(value="delete", method=RequestMethod.GET)
	public String delete(@RequestParam(value="qnacd") int qnacd, HttpSession session) {
		Member member=(Member)session.getAttribute("authInfo");
		if(member == null) {
			return "loginform";
		}
		try {
			Qna qna = new Qna();
			qna.setEmail(member.getEmail());
			qna.setQnacd(qnacd);
			
			
			System.out.println(qnacd);
			qnaDao.delete(qnacd);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return "redirect:qnalist";
	}

}

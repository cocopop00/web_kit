package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.QnaDao;
import dto.Member;
import dto.Qna;

@Controller
//@RequestMapping("qnadelete")
public class QnaDeleteController {
	private QnaDao qnaDao;
	public QnaDeleteController setQnaDao(QnaDao qnaDao) {
		this.qnaDao = qnaDao;
		return this;
	}
	
	@RequestMapping(value="/qnadelete",method=RequestMethod.GET)
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

	
	@RequestMapping(value="/qnasdelete",method=RequestMethod.GET)
	public String deletes(HttpSession session,HttpServletRequest request)throws Exception {
		
		Member member=(Member)session.getAttribute("authInfo");
		if(member == null) {
			return "loginform";
		}{
			String[] pseq = request.getParameterValues("qnacd"); 
			
			for(String ps : pseq) { 
				qnaDao.delete(Integer.parseInt(ps));
			}			
		}
		

		return "redirect:qnalist";
	}
	
	
	
	
	
}

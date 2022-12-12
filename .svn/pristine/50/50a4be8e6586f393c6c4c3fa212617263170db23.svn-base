package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.QnaDao;
import dto.Qna;

@Controller
public class QnaUpdateController {
	private QnaDao qnaDao;
	
	public QnaUpdateController setQnaDao(QnaDao qnaDao) {
		this.qnaDao = qnaDao;
		return this;
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String update(Qna qna) throws Exception{
		qnaDao.update(qna);
		return "redirect:/qnalist";
	}
}

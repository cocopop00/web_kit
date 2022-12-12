package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.QnaDao;

@Controller
@RequestMapping("qnalist")
public class QnaListController {
	private QnaDao qnadao;
	
	public QnaListController setQnaDao(QnaDao qnaDao) {
		this.qnadao = qnaDao;
		return this;
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public String qnalist(Model model) throws Exception {
		model.addAttribute("qnalist", qnadao.selectList());
		return "/qnalist";
	}
	@RequestMapping(method = RequestMethod.POST)
	public String form(@RequestParam(value="qna_cd")int num) throws Exception {
		return "/qnaadd";
	}
	
}

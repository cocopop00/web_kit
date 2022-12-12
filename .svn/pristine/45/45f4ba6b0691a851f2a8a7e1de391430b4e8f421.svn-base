package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.QnaDao;
import dto.Qna;

@Controller
@RequestMapping("qnadetail")
public class QnaDetailController {
	private QnaDao qnadao;
	
	public QnaDetailController setqnadetail(QnaDao qnadao) {
		this.qnadao = qnadao;
		return this;
		
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public String form(HttpServletRequest request, Model model) throws Exception{
		int qnacd = Integer.parseInt(request.getParameter("qnacd"));
		List<Qna> qna = qnadao.selectDetail(qnacd);
		model.addAttribute("qnadetail", qna);
		return "/qnadetail"; 
	}
	@RequestMapping(method = RequestMethod.POST)
	public String form(@RequestParam(value="qnacd")int num) throws Exception {
		return "/qnadetail";
	}
	
}

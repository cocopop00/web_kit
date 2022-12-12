package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.OftenQnaDao;

@Controller
@RequestMapping("oftenqnalist")
public class OftenQnaController {
	private OftenQnaDao oftenqnadao;

	public OftenQnaController setOftenQnaDao(OftenQnaDao oftenqnadao) {
		this.oftenqnadao = oftenqnadao;
		return this;
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public String oftenqnalist(Model model) throws Exception{
		model.addAttribute("oftenqnalist", oftenqnadao.selectList());
		return "oftenqnalist";
	}
	@RequestMapping(method = RequestMethod.POST)
	public String form(@RequestParam(value="oftqna_cd")int num) throws Exception {
		
		return "oftenqnadetail";
		
	}

}

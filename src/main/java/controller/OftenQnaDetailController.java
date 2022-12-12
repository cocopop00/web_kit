package controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.OftenQnaDao;

@Controller
@RequestMapping("oftenqnadetail")
public class OftenQnaDetailController {
	private OftenQnaDao oftenqnadao;
	
	public OftenQnaDetailController setOftenQnaDetail(OftenQnaDao oftenqnadao) {
		this.oftenqnadao = oftenqnadao;
		return this;
	}
	@RequestMapping(method = RequestMethod.GET)
	public String form(HttpServletRequest request, Model model) throws Exception {
		int oftqnacd = Integer.parseInt(request.getParameter("oftqnacd"));
		System.out.println("in1");
		System.out.println(oftqnacd);
		model.addAttribute("oftenqnadetail", oftenqnadao.selectOne(oftqnacd));
		System.out.println("in2" + model + "n" + oftqnacd);
		return "oftenqnadetail";
	}
	@RequestMapping(method = RequestMethod.POST)
	public String form(@RequestParam(value="oftqnacd")int num) throws Exception {
		return "oftenqnadetail";
	}
	
	
	
}

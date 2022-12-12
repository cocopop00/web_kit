package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.MemberDao;
import dto.Member;

@Controller
@RequestMapping("/emailcheck")
public class MemberCheckController {
	private MemberDao memberDao;
	
	public MemberCheckController setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
		return this;
	}

	
	@RequestMapping(method = { RequestMethod.GET })
    public String form(@RequestParam(value="email")String eamil,Model model)throws Exception{
		Member members = new Member();
		members = memberDao.selecteOne(eamil);
		
		model.addAttribute("members", members);
		
		return "/emailcheckform";

	}
	}

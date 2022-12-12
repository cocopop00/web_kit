package controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.databind.introspect.TypeResolutionContext.Empty;
import com.mchange.lang.ObjectUtils;
import com.mchange.lang.StringUtils;

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
    public String form(@RequestParam(value="email")String email,Model model)throws Exception{
		Member members = new Member();
		
		members = memberDao.selecteOne(email);
		
		
		model.addAttribute("members", members);
		model.addAttribute("email", email);
		return "/emailcheckform";	
		
	}
	
	
	
	}

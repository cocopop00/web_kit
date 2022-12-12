package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.MemberDao;

@Controller
@RequestMapping("/findpw")
public class PwdFindController {
	private MemberDao memberDao;

	public PwdFindController setMemberDao(MemberDao memberDao) {

		this.memberDao = memberDao;
		return this;
	}

	@RequestMapping(method = RequestMethod.GET)
	public String form() {
		return "/findpwd";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String submit() {
		return "/findpwdresult";

	}
}

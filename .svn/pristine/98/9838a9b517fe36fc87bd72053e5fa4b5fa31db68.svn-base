package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.MemberDao;

@Controller
@RequestMapping("/findem")
public class EmailFindController {
	private MemberDao memberDao;

	public EmailFindController setMemberDao(MemberDao memberDao) {

		this.memberDao = memberDao;
		return this;
	}

	@RequestMapping(method = RequestMethod.GET)
	public String form() {
		System.out.println("들어오니?");
		return "/findemail";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String submit() {
		System.out.println("들어오니?2");
		return "/findemailresult";

	}
}

package controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Util.SHA256;
import dao.MemberDao;
import dto.Member;

@Controller
//@RequestMapping("login")
public class LoginController {
	private MemberDao memberDao;

	public LoginController setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
		return this;
	}
	

	@RequestMapping("login") // 로그인폼으로서 역할을 해준다
	public String form(Member loginCommand, HttpSession session) {
		
		System.out.println("!!@@");
		
		if (session.getAttribute("authInfo") != null) {
			System.out.println("!!");
			if (((Member) session.getAttribute("authInfo")).getEmail() != loginCommand.getEmail()) {
				return "index";
			}

		}
		return "loginform";
	}

	
	@RequestMapping(value="login", method = RequestMethod.POST)
	public String submit(Member loginCommand, Errors errors, HttpSession session) {
		if (errors.hasErrors()) {
			return "loginform";
		}
		try {
			SHA256 sha256 = new SHA256();
			String cryptogram = sha256.encrypt(loginCommand.getPwd());
			loginCommand.setPwd(cryptogram);
			
			Member authInfo = memberDao.exist(loginCommand.getEmail(), loginCommand.getPwd());
			if (authInfo == null) {
			
				throw new Exception("회원자 없음!!!");
			}
			session.setAttribute("authInfo", authInfo);
			return "redirect:index";
		} catch (Exception e) {
			return "loginform";
		}
	}
}

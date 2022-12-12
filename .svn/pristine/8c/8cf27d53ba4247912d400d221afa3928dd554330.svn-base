package controller;

import java.security.NoSuchAlgorithmException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import Util.SHA256;
import dao.MemberDao;
import dto.Member;

@Controller
public class MemberJoinController {
	private MemberDao memberDao;

	public MemberJoinController setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
		return this;
	}

	@RequestMapping("/joinForm")
	public String form() {
		return "/joinform";
	}

	@PostMapping("/join")
	public String submit(Member member) throws NoSuchAlgorithmException{
		try {
			
			// 비밀번호 암호화.
			SHA256 sha256 = new SHA256();
			String cryptogram = sha256.encrypt(member.getPwd());
			member.setPwd(cryptogram);
			
			System.out.println(member.getPwd());
			
			memberDao.insert(member);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:index";
	}
	
}
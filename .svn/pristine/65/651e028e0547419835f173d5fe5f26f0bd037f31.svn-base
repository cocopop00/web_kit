package controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Util.SHA256;
import dao.MemberDao;
import dto.Member;

@Controller
@RequestMapping("/update")
public class MemberUpdateController {
	private MemberDao memberDao;

	public MemberUpdateController setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
		return this;
	}
	    // �쉶�썝 �젙蹂� �닔�젙 �럹�씠吏�
	@RequestMapping(method = RequestMethod.GET) 
		public String form() {
			return "MemberUpdate";
		}
	    
		// �쉶�썝 �젙蹂� �닔�젙
	@RequestMapping(method = RequestMethod.POST) 
		public String update(Member member) throws Exception {
		
		// 수정된 비밀번호 암호화.
		SHA256 sha256 = new SHA256();
		String cryptogram = sha256.encrypt(member.getPwd());
		member.setPwd(cryptogram);

			memberDao.update(member);
			return "redirect:/index";
		}
	}

	

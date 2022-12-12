package controller;

import java.util.Arrays;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Util.Randompw;
import Util.SHA256;
import dao.MemberDao;
import dto.Member;

@Controller
@RequestMapping("/findpwdre")
public class PwdFindResultController {
	
	private MemberDao memberDao;
	
	public PwdFindResultController setMemberDao(MemberDao memberDao) {

		this.memberDao = memberDao;
		return this;
	}
	
	@RequestMapping(method = RequestMethod.POST) 
	public String form(HttpServletRequest req, Model model) throws Exception {
		
		Randompw random = new Randompw();	
		String email = req.getParameter("email");
		String phone = req.getParameter("phone");
		
		try {
			Member mpwd = memberDao.findpwd(email, phone); 
			String newdpw = null;
			String newpw = null;
			
			
			// DB에서 비밀번호를 찾았을 때
			if(mpwd.getPwd() != null) {

				newpw = random.randomPwread();
				
				SHA256 sha256 = new SHA256();
				newdpw = sha256.encrypt(newpw);
				
				int buf = memberDao.pwdupdate(newdpw, email);
				
				model.addAttribute("mpwd",mpwd);
				model.addAttribute("newpw",newpw);					
				
			}// DB에서 비밀번호를 찾지 못했을 때
			else {
				model.addAttribute("mpwd",mpwd);
				model.addAttribute("newpw",newpw);				
			}			
			
			return "/findpwdresult";
			
		}catch(Exception e){
			e.printStackTrace();
			return "/findpwdresult";
		}
		

	}
		
	
		
}

	
	
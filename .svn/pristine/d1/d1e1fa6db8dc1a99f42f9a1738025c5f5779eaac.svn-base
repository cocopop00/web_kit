package controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.MemberDao;
import dto.Member;

	@Controller
	@RequestMapping("/findemailre")
	public class EmailFindResultController {
		private MemberDao memberDao;

		public EmailFindResultController setMemberDao(MemberDao memberDao) {

			this.memberDao = memberDao;
			return this;
		}
		@RequestMapping(method = RequestMethod.POST) 
		public String form(HttpServletRequest req, Model model) throws Exception {
			String name = req.getParameter("name");
			String phone = req.getParameter("phone");
			System.out.println(name + phone);
			
		     
		 Member memail = memberDao.findemail(name, phone); 
		 model.addAttribute("memail",memail);
		 
		return "/findemailresult";
	}
}

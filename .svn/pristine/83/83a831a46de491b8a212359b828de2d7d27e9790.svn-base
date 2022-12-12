package controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.ProductQnaDao;
import dto.Member;

@Controller
@RequestMapping("/itemqnaview")
public class ItemqnaviewformController {

	private ProductQnaDao productQnaDao; 
	

	public ItemqnaviewformController setproductQna(ProductQnaDao productQnaDao) {
		this.productQnaDao = productQnaDao;
		return this;
	}
	
	
	@ResponseBody
	@RequestMapping(method = RequestMethod.GET)
	public void form(HttpServletRequest request,HttpSession session,HttpServletResponse response) throws Exception{
		
		int prodqcode = Integer.parseInt(request.getParameter("prodqcode"));
		int buf = 0;
		Member member=(Member)session.getAttribute("authInfo");
		
		response.setContentType("application/x-json; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		if(member.getEmail() != null) {
			//System.out.println("여기왔어?");
			buf = productQnaDao.deleteone(prodqcode);
			if(buf != -1) {
				buf = 0;
				out.print(buf);
			}
			else {
				buf = 1;
				out.print(buf);				
			} 
		}else {
			buf = 2;
			out.print(buf);
		} 
		
	}
	
}

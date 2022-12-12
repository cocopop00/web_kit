package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.ZipcodeDao;
import dto.ZipCode;

@Controller
@RequestMapping("/zipcode")
public class ZipcodeController {
	private ZipcodeDao zipDao;
	
	public ZipcodeController setZipDao(ZipcodeDao zipDao) {
		this.zipDao = zipDao;
		return this;
		
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public String form() {
		return "/zipcodeform";
		
	}
	
	@RequestMapping(method = RequestMethod.POST)
		public String submit(HttpServletRequest request, Model model) throws Exception{
		String code = request.getParameter("code");
		List<ZipCode> zips = null;
		
		if(code == null) {
			return "/zipcodeform";
		}
		else {
			zips = zipDao.selectzip(code);
			for(int i=0; i<zips.size(); i++ ) {
				System.out.println(zips.get(i).getDong());
			}
		}
		model.addAttribute("zips",zips);
		return "/zipcodeform";
		
		
			
		}
	}


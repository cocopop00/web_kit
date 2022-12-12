package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.OrderListDao;
import dto.Member;
import dto.OrderList;

@Controller
@RequestMapping("orderdetail")
public class OrderMyDetailController {

	private OrderListDao orderListDao;

	public OrderMyDetailController setOrderDao(OrderListDao orderListDao) {
		this.orderListDao = orderListDao;
		return this;
	}

	@RequestMapping(method = RequestMethod.GET)
	public String execute(Model model, HttpSession session, HttpServletRequest request)
			throws ServletException, IOException {
		Member member = (Member) session.getAttribute("authInfo");
		List<OrderList> orderList = null;
		int page = Integer.parseInt(request.getParameter("page"));
		int ord_cd = Integer.parseInt(request.getParameter("ordcd"));
		System.out.println(ord_cd);

		orderList = orderListDao.selectMyOrderDetail(member.getEmail(), ord_cd);
		
		model.addAttribute("page", page);
		model.addAttribute("orderlist", orderList);
		return "Myorderdetail";
	}

}
package controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import dao.CartListDao;
import dao.OrderListDao;
import dao.ProductDao;
import dto.CartList;
import dto.Member;
import dto.OrderList;
import dto.Product;

@Controller
public class OrderInsertcontroller {

	private OrderListDao orderListDao;
	private ProductDao productDao;
	private CartListDao cartListDao;

	public OrderInsertcontroller setOrderDao(OrderListDao orderListDao) {
		this.orderListDao = orderListDao;
		return this;
	}

	public OrderInsertcontroller setcartDao(CartListDao cartListDao) {
		this.cartListDao = cartListDao;
		return this;
	}
	
	public OrderInsertcontroller setproDao(ProductDao productDao) {
		this.productDao = productDao;
		return this;
	}
	
	@GetMapping(value="order")
	public String execute(Model model, HttpSession session) throws Exception {
		Member member = (Member) session.getAttribute("authInfo");
		ArrayList<OrderList> orderList = null;
		if (session.getAttribute("authInfo") == null) {
			return "loginform";
		} else {

			ArrayList<CartList> cartList = (ArrayList<CartList>) cartListDao.selectCart(member.getEmail());
			
			int maxOseq=orderListDao.insertOrder(cartList, member.getEmail());
			model.addAttribute("orderlist", orderListDao.selectOrder(member.getEmail(),maxOseq));
			return "orderlist";
		}

	}
	

	@GetMapping(value="order2")
	public String execute2(Model model, HttpSession session, @RequestParam("prod_cd")int prod_cd) throws Exception {
		Member member = (Member) session.getAttribute("authInfo");
		ArrayList<OrderList> orderList = null;
		if (session.getAttribute("authInfo") == null) {
			return "loginform";
		} else {

			//int dd = Integer.parseInt(request.getParameter("pseq"));   
			System.out.println("왜 4개야 : " + prod_cd);
			Product product = productDao.orderitem(prod_cd);
			System.out.println("왜 4개냐고!! : " + product);
			int maxOseq=orderListDao.insetOrder2(product, member.getEmail());
			System.out.println("왜 4개냐고!!!!! : " + maxOseq);
			model.addAttribute("orderlist", orderListDao.selectOrder(member.getEmail(),maxOseq));
			return "orderlist";
		}

	}
}

package controller;

import java.io.IOException;
import java.util.ArrayList;
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
@RequestMapping("MyOrderList")
public class OrderListController {

	private OrderListDao orderListDao;

	public OrderListController setOrderDao(OrderListDao orderListDao) {
		this.orderListDao = orderListDao;
		return this;
	}

	@RequestMapping(method = RequestMethod.GET)
	public String execute(Model model, HttpSession session,HttpServletRequest request) throws ServletException, IOException {

		Member member = (Member) session.getAttribute("authInfo");

		if (session.getAttribute("authInfo") == null) {
			return "loginform";
		} else {

			if(session.getAttribute("itempay") != null) {
				 session.removeAttribute("itempay"); 
			}
			
			int page = Integer.parseInt(request.getParameter("page"));
			int pagenumber = page;
			
			// 1페이지 아닐 경우 계산
			if(page != 1) page = ((page*12)-11);
			
			int pagecount = orderListDao.selectcount(member.getEmail());
			
			List<Integer> ord_cdList  = orderListDao.selectSeqOrdering(member.getEmail(),page);
						
			if((pagecount%12) != 0) {
				page = (pagecount/12)+1;
			}
			else {
				if((pagecount/12) == 0){
					page = 1;
				}
				else page = pagecount/12;
			} 
			
			
			// List<Integer> ord_cdList = orderListDao.selectSeqOrdering(member.getEmail());
			// 현재 진행 중인 주문 목록 대표 상품 외 2건식으로 출력하기기
			ArrayList<OrderList> orderList = new ArrayList<>();

			// 주문중인 번호 상품 ord_cd 를 반복문을 돌린다.
			for (int ord_cd : ord_cdList) {
				// 미처리 항목 1
				List<OrderList> orderListing = orderListDao.listOrderByEmail(member.getEmail(), "1", ord_cd);
				
				// 목록중 첫번째 값만 orderVO 객체에 담는다.
				int delivery = 3000;
				int totalPrice = 0;

				if (orderListing.size() != 0 && orderListing.size() != 1) {
					OrderList orderVO = orderListing.get(0);
					orderVO.setItem_name(orderVO.getItem_name() + " 외 " + (orderListing.size() - 1) + "  건");

					// 주문 된 상품 목록의 전체 가격을 saleprice 에 담는다.

					for (OrderList ovo : orderListing) {
						totalPrice += ovo.getSaleprice() * ovo.getQuantity();
					}
					orderVO.setSaleprice(totalPrice + delivery);

					orderList.add(orderVO);
				} else if (orderListing.size() == 1) {
					
					OrderList orderVO = orderListing.get(0);
					orderVO.setItem_name(orderVO.getItem_name());
					for (OrderList ovo : orderListing) {
						totalPrice += ovo.getSaleprice() * ovo.getQuantity();
					}
					orderVO.setSaleprice(totalPrice + delivery);

					orderList.add(orderVO);
				}
			}
			
		
			model.addAttribute("pagenumber", pagenumber);
			model.addAttribute("page", page);
			model.addAttribute("orderlist", orderList);
		}
		return "MyOrderList";
	}

}
/*
 * @RequestMapping(method = RequestMethod.GET) public String list(Model
 * model,HttpSession session,@RequestParam(value = "ord_cd", required = false)
 * String ord_cd) throws Exception { Member
 * member=(Member)session.getAttribute("authInfo"); List<OrderList> orderList =
 * null; if(session.getAttribute("authInfo") == null){ return "loginform"; }
 * else {
 * 
 * int max = Integer.parseInt(ord_cd); System.out.println("max값:"+max);
 * orderList = orderListDao.selectOrder(member.getEmail(),max);
 * model.addAttribute("orderlist", orderList); return "MyOrderList"; }
 * 
 * }
 * 
 * 
 * 
 * 
 * 
 * 
 * }
 */

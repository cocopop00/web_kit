package config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import controller.CartListController;
import controller.EmailFindController;
import controller.EmailFindResultController;
import controller.EventDetailController;
import controller.EventListController;
import controller.Eventitemlist;
import controller.IndexController;
import controller.ItemInfoController;
import controller.ItemListController;
import controller.ItemNBListController;
import controller.ItemqnainsertController;
import controller.ItemqnaviewformController;
import controller.LoginController;
import controller.LogoutController;
import controller.MemberCheckController;
import controller.MemberJoinController;
import controller.MemberListController;
import controller.MemberUpdateController;
import controller.MyPageController;
import controller.NoticeDetailController;
import controller.NoticeListController;
import controller.OftenQnaController;
import controller.OftenQnaDetailController;
import controller.OrderInsertcontroller;
import controller.OrderListController;
import controller.OrderMyDetailController;
import controller.PwdFindController;
import controller.PwdFindResultController;
import controller.QnaAddController;
import controller.QnaDeleteController;
import controller.QnaDetailController;
import controller.QnaListController;
import controller.QnapwcheckController;
import controller.ReviewDetailController;
import controller.ReviewinsertController;
import controller.ReviewlistController;
import controller.SearchlistController;
import controller.WishListController;
import controller.WishUpdateController;
import controller.WorkerPorductInsert;
import controller.ZipcodeController;
import dao.CartListDao;
import dao.EventDao;
import dao.MemberDao;
import dao.NoticeDao;
import dao.OftenQnaDao;
import dao.OrderListDao;
import dao.ProductDao;
import dao.ProductQnaDao;
import dao.QnaDao;
import dao.ReviewDao;
import dao.WishListDao;
import dao.ZipcodeDao;



@Configuration
public class ControllerConfig implements WebMvcConfigurer{
	@Autowired
	private MemberDao memberDao;
	@Autowired
	private ZipcodeDao zipDao;
	@Autowired
	private CartListDao cartlistDao;
	@Autowired
	private EventDao eventDao;
	@Autowired
	private ProductDao productDao;
	@Autowired
	private ProductQnaDao productQnaDao;
	@Autowired
	private NoticeDao noticeDao;
	@Autowired
	private OftenQnaDao oftenqnaDao;
	@Autowired
	private QnaDao qnaDao;
	@Autowired
	private OrderListDao orderListDao;
	@Autowired
	private WishListDao wishlistDao;
	@Autowired
	private ReviewDao reviewDao; 
	
	@Bean
	public LoginController loginController() {
		LoginController logInController = new LoginController(); 
		logInController.setMemberDao(memberDao);
		return logInController;
	} 
	@Bean
	public MemberListController memberListController() {
		MemberListController memberListController = new MemberListController();
		memberListController.setMemberDao(memberDao);
		return memberListController;
	}
	
	// 회원가입
	@Bean
	public MemberJoinController memberJoinController() {
		MemberJoinController memberJoinController = new MemberJoinController();
		memberJoinController.setMemberDao(memberDao);
		return memberJoinController;
	}
	
	@Bean
	public MemberCheckController memberCheckController() {
		MemberCheckController memberCheckController = new MemberCheckController();
		memberCheckController.setMemberDao(memberDao);
		return memberCheckController;
	}
	
	@Bean
	public ZipcodeController zipcodeController() {
		ZipcodeController zipcodeController= new ZipcodeController();
		zipcodeController.setZipDao(zipDao);
		return zipcodeController;
	}
	@Bean
	public CartListController cartlistController() {
		CartListController cartlistController= new CartListController();
		cartlistController.setCartListDao(cartlistDao);
		return cartlistController;
	}
	@Bean
	public EventListController eventListController() {
		EventListController eventListController = new EventListController();
		eventListController.seteventlist(eventDao);
		return eventListController;
	}
	@Bean
	public IndexController indexController() {
		IndexController indexController = new IndexController();
		indexController.setindex(productDao);
		return indexController;
	}
		
	@Bean
	public EmailFindController emailFindController() {
		EmailFindController emailFindController = new EmailFindController();
		emailFindController.setMemberDao(memberDao);
		return emailFindController;
	}
	@Bean
	public EmailFindResultController emailFindResultController() {
		EmailFindResultController emailFindResultController = new EmailFindResultController();
		emailFindResultController.setMemberDao(memberDao);
		return emailFindResultController;
	}
	
	@Bean PwdFindController pwdFindController() {
		PwdFindController pwdFindController = new PwdFindController();
		pwdFindController.setMemberDao(memberDao);
		return pwdFindController;
	}
	
	@Bean PwdFindResultController pwdFindResultController() {
		PwdFindResultController pwdFindResultController = new PwdFindResultController();
		pwdFindResultController.setMemberDao(memberDao);
		return pwdFindResultController;
	}
	@Bean
	public MemberUpdateController memberUpdateController() {
		MemberUpdateController memberUpdateController = new MemberUpdateController();
		memberUpdateController.setMemberDao(memberDao);
		return memberUpdateController;
	}
	
	
	@Bean
	public EventDetailController eventDetailController() {
		EventDetailController eventDetailController = new EventDetailController();
		eventDetailController.seteventdetail(eventDao);
		return eventDetailController;
	}
	
	@Bean
	public ItemNBListController itemNBListController() {
		ItemNBListController itemNBListController = new ItemNBListController();
		itemNBListController.setitemnblist(productDao);
		return itemNBListController;
	}
	@Bean
	public ItemListController itemListController() {
		ItemListController itemListController = new ItemListController();
		itemListController.setitemlist(productDao);
		return itemListController;
	}
	@Bean
	public LogoutController logoutController() {
		LogoutController logoutController = new LogoutController();
		return logoutController;	
	}
	
	@Bean
	public Eventitemlist eventitemlist() {
		Eventitemlist eventitemlist = new Eventitemlist();
		eventitemlist.setevendao(eventDao);
		eventitemlist.setproductdao(productDao);		
		return eventitemlist;
	}
	
	@Bean
	public ItemqnainsertController itemqnainsertController() {
		ItemqnainsertController itemqnainsertController = new ItemqnainsertController();
		itemqnainsertController.setproductqnadao(productQnaDao);
		return itemqnainsertController;
	}
	
	@Bean
	public ItemqnaviewformController itemqnaviewformController() {
		ItemqnaviewformController itemqnaviewformController = new ItemqnaviewformController();
		itemqnaviewformController.setproductQna(productQnaDao);
		return itemqnaviewformController;
	}
	
	
	@Bean
	public QnapwcheckController qnapwcheckController() {
		QnapwcheckController qnapwcheckController = new QnapwcheckController();
		qnapwcheckController.setproductqnadao(productQnaDao);
		return qnapwcheckController;
	}
	@Bean
	public OrderInsertcontroller orderInsertcontroller() {
		OrderInsertcontroller orderInsertcontroller = new OrderInsertcontroller();
		orderInsertcontroller.setproDao(productDao);
		orderInsertcontroller.setOrderDao(orderListDao);
		orderInsertcontroller.setcartDao(cartlistDao);
		return orderInsertcontroller;
	}	
	
	@Bean
	public OrderListController orderListController() {
		OrderListController orderListController = new OrderListController();
		orderListController.setOrderDao(orderListDao);
		return orderListController;
	}
		
	@Bean
	public OrderMyDetailController orderMyDetailController() {
		OrderMyDetailController orderMyDetailController = new OrderMyDetailController();
		orderMyDetailController.setOrderDao(orderListDao);
		return orderMyDetailController;
	}
	@Bean
	public NoticeListController noticelistController() {
		NoticeListController noticelistController = new NoticeListController();
		noticelistController.setnoticelist(noticeDao);
		return noticelistController;
	}
	// 상품페이지
	@Bean
	public ItemInfoController iteminfoController() {
		ItemInfoController iteminfocontroller = new ItemInfoController();
		iteminfocontroller.iteminfo(productDao);
		iteminfocontroller.setproductQna(productQnaDao);
		return iteminfocontroller;
	}
	@Bean
	public WishListController wishListController() {
		WishListController wishListController = new WishListController();
		wishListController.setWishListDao(wishlistDao);
		return wishListController;
	}
	@Bean
	public WishUpdateController wishUpdateController() {
		WishUpdateController wishUpdateController = new WishUpdateController();
		wishUpdateController.setWishListDao(wishlistDao);
		return wishUpdateController;
	}
	@Bean
	public OftenQnaController oftenqnaController() {
		OftenQnaController oftenqnaController = new OftenQnaController();
		oftenqnaController.setOftenQnaDao(oftenqnaDao);
		return oftenqnaController;
	}
	@Bean
	public OftenQnaDetailController oftenqnadetailController() {
		OftenQnaDetailController oftenqnadetailController = new OftenQnaDetailController();
		oftenqnadetailController.setOftenQnaDetail(oftenqnaDao);
		return oftenqnadetailController;
	}
	@Bean
	public QnaListController qnalistController() {
		QnaListController qnalistController = new QnaListController();
		qnalistController.setQnaDao(qnaDao);
		return qnalistController;
	}
	@Bean
	public QnaDetailController qnadetailController() {
		QnaDetailController qnadetailController = new QnaDetailController();
		qnadetailController.setqnadetail(qnaDao);
		return qnadetailController;
	}
	
	@Bean
	public QnaDeleteController qnaDeleteController() {
		QnaDeleteController qnaDeleteController = new QnaDeleteController();
		qnaDeleteController.setQnaDao(qnaDao);
		return qnaDeleteController;
	}
	
	@Bean
	public WorkerPorductInsert workerPorductInsert() {
		WorkerPorductInsert workerPorductInsert = new WorkerPorductInsert();
		workerPorductInsert.setitemlist(productDao);
		return workerPorductInsert;
	}
	
	
	@Bean
	public SearchlistController searchlistController() {
		SearchlistController searchlistController = new SearchlistController();
		searchlistController.setproductdao(productDao);
		return searchlistController;
	}
	
	@Bean
	public ReviewlistController reviewlistController() {
		ReviewlistController reviewlistController = new ReviewlistController();
		reviewlistController.setorderlistdao(orderListDao);
		reviewlistController.setreviewdao(reviewDao);
		return reviewlistController;
	}
	
	

	@Bean
	public ReviewinsertController reviewinsertController() {
		ReviewinsertController reviewinsertController = new ReviewinsertController();
		reviewinsertController.setreviewdao(reviewDao);
		reviewinsertController.setorderlistdao(orderListDao);
		return reviewinsertController;
	}
	
	
	
	@Bean
	public ReviewDetailController reviewDetailController() {
		ReviewDetailController reviewDetailController = new ReviewDetailController();
		reviewDetailController.setreviewdao(reviewDao);
		return reviewDetailController;
	}
	
	@Bean
	public MyPageController myPageController() {
		MyPageController myPageController = new MyPageController();
		myPageController.setMemberDao(memberDao);
		myPageController.setreviewdao(reviewDao);
		myPageController.setproductQna(productQnaDao);
		return myPageController;
	}
	
	@Bean
	public NoticeDetailController noticeDetailController() {
		NoticeDetailController noticeDetailController = new NoticeDetailController();
		noticeDetailController.setnoticedetail(noticeDao);
		return noticeDetailController;
	}
	
	@Bean
	public QnaAddController qnaAddController() {
		QnaAddController qnaAddController = new QnaAddController();
		qnaAddController.setQnaDao(qnaDao);
		return qnaAddController;
	}
	
	
	/*
	@Bean
	public MemberUpdateController memberUpdateController() {
		MemberUpdateController memberUpdateController = new MemberUpdateController();
		memberUpdateController.setMemberDao(memberDao);
		return memberUpdateController;
	}
	
	@Bean
	public MemberDeleteController memberDeleteController() {
		MemberDeleteController memberDeleteController = new MemberDeleteController();
		memberDeleteController.setMemberDao(memberDao);
		return memberDeleteController;
	}
	
		
	
	@Bean
	public LogOutController logoutController() {
		return new LogOutController();
	}*/

}

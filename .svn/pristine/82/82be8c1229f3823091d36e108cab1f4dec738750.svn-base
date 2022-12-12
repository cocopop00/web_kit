package config;

import java.beans.PropertyVetoException;
import java.io.InputStream;

import javax.sql.DataSource;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.mchange.v2.c3p0.ComboPooledDataSource;

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
public class MemberConfig {
	private SqlSessionFactory sqlSessionFactory;
	public MemberConfig() {
		try {
			String resource = "dao/mybatis-config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
			
		}catch (Exception e) {
			e.printStackTrace(); // TODO: handle exception
		}
	}
	@Bean
	public DataSource dataSource() {
		ComboPooledDataSource dataSource = new ComboPooledDataSource();
		try {
			dataSource.setDriverClass("com.mysql.cj.jdbc.Driver");
		} catch (PropertyVetoException e) {
			throw new RuntimeException(e);
		}
		dataSource.setJdbcUrl("jdbc:mysql://localhost:3306/kit");
		dataSource.setUser("root");
		dataSource.setPassword("java");
		return dataSource;
		
		}
	@Bean
	public MemberDao memberDao() {
		MemberDao member = new MemberDao();
		//member.setDataSource(dataSource());
		member.setDataSource(dataSource(), sqlSessionFactory); // mybatis적용
		return member;
	}
	
	@Bean
	public ZipcodeDao zipcode() {
		ZipcodeDao zipcode = new ZipcodeDao();
		zipcode.setDataSource(dataSource(), sqlSessionFactory);
		return zipcode;
	}
	@Bean
	public CartListDao cartlist() {
		CartListDao cartlist = new CartListDao();
		cartlist.setDataSource(dataSource(), sqlSessionFactory);
		return cartlist;
	}
	
	@Bean
	public ProductDao productDao() {
		ProductDao product = new ProductDao();
		product.setDataSource(dataSource(), sqlSessionFactory);
		return product;
	}
	@Bean
	public EventDao eventDao() {
		EventDao event = new EventDao();
		event.setDataSource(dataSource(), sqlSessionFactory);
		return event;
	}
	@Bean
	public OrderListDao orderlistDao() {
		OrderListDao orderlist = new OrderListDao();
		orderlist.setDataSource(dataSource(), sqlSessionFactory);
		return orderlist;
	}
	@Bean
	public WishListDao wishlistDao() {
		WishListDao wishlist = new WishListDao();
		wishlist.setDataSource(dataSource(), sqlSessionFactory);
		return wishlist;
	}
	@Bean
	public ProductQnaDao productQnaDao() {
		ProductQnaDao productQnaDao = new ProductQnaDao();
		productQnaDao.setDataSource(dataSource(), sqlSessionFactory);
		return productQnaDao;
	}	
	
	@Bean
	public OrderListDao orderListDao() {
		OrderListDao orderListDao = new OrderListDao();
		orderListDao.setDataSource(dataSource(), sqlSessionFactory);
		return orderListDao;
	}
	@Bean
	public NoticeDao noticeDao() {
		NoticeDao notice = new NoticeDao();
		notice.setDataSource(dataSource(), sqlSessionFactory);
		return notice;
	}
	
	@Bean
	public OftenQnaDao oftenqnaDao() {
		OftenQnaDao oftenqna = new OftenQnaDao();
		oftenqna.setDataSource(dataSource(), sqlSessionFactory);
		return oftenqna;
	}
	
	@Bean
	public QnaDao qnaDao() {
		QnaDao qna = new QnaDao();
		qna.setDataSource(dataSource(), sqlSessionFactory);
		return qna;
	}
	@Bean
	public ReviewDao reviewDao() {
		ReviewDao reviewDao = new ReviewDao();
		reviewDao.setDataSource(dataSource(), sqlSessionFactory);
		return reviewDao;
	}
}

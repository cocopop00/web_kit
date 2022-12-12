package dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import dto.CartList;
import dto.OrderList;
import dto.Product;

public class OrderListDao {
	private DataSource datasource;
	private SqlSessionFactory sqlSessionFactory;

	public void setDataSource(DataSource dataSource, SqlSessionFactory sqlSessionFactory) {
		this.datasource = dataSource;
		this.sqlSessionFactory = sqlSessionFactory;
	}
//

	public List<OrderList> selectOrder(String email, int maxOseq) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String, Object> map = new HashMap<String, Object>();

		map.put("email", email);
		map.put("maxOseq", maxOseq);

		try {
			return sqlSession.selectList("dao.OrderListDao.selectOrder", map);

		} finally {
			sqlSession.close();
		}
	}
	
	  public List<OrderList> selectOrder2(String email) throws Exception {
	      SqlSession sqlSession = sqlSessionFactory.openSession();
	      try {
	         return sqlSession.selectList("dao.OrderListDao.selectOrder2", email);

	      } finally {
	         sqlSession.close();
	      }
	   }
	  
	  public int selectcntMax(String email) {
			
			SqlSession sqlSession = sqlSessionFactory.openSession();
			
			try {
				return sqlSession.selectOne("dao.OrderListDao.selectcntMax", email);

			} finally {
				sqlSession.close();
			}
			
		}
		
		
		public List<OrderList> selectitemlist(String email, int max){
			
			SqlSession sqlSession = sqlSessionFactory.openSession();
			Map<String, Object> map = new HashMap<String, Object>();
			
			map.put("email", email);
			map.put("max", max);		
			
			try {
				return sqlSession.selectList("dao.OrderListDao.selectitemlist", map);

			} finally {
				sqlSession.close();
			}
			
		}
	   
	   
	     

//	
//	
//	
	public int insetOrder2(Product product, String email, int quantity) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int maxOrdcd = 0;

		try {
			sqlSession.insert("dao.OrderListDao.insertOrder2", email);
			sqlSession.commit();

			int selectmaxOrdcd = sqlSession.selectOne("dao.OrderListDao.selectMaxOrdcd");
			sqlSession.commit();

			maxOrdcd = selectmaxOrdcd;

			//System.out.println("이거 대채 왜 4개돌아이거 : " + product);
			
			
			insertOrderDetail2(product,quantity, maxOrdcd);
			//System.out.println("maxOrdcd값:" + maxOrdcd);
		} catch (Exception e) {
			sqlSession.rollback();
		} finally {
			sqlSession.close();
		}
		return maxOrdcd;

	}

	public void insertOrderDetail2(Product product,int quantity, int maxOrdcd) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String, Object> map = new HashMap<String, Object>();
		//
		map.put("maxOrdcd", maxOrdcd);
		map.put("quantity", quantity);
		map.put("Prodcd", product.getProd_cd());

		try {
			sqlSession.insert("dao.OrderListDao.insertOrderDetail2", map);
			sqlSession.commit();

		} catch (Exception e) {
			sqlSession.rollback();
		} finally {
			sqlSession.close();
		}

	}

	public int insertOrder(ArrayList<CartList> cartList, String email) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int maxOrdcd = 0;

		try {
			sqlSession.insert("dao.OrderListDao.insertOrder", email);
			sqlSession.commit();

			int selectmaxOrdcd = sqlSession.selectOne("dao.OrderListDao.selectMaxOrdcd");
			sqlSession.commit();

			maxOrdcd = selectmaxOrdcd;

			for (CartList cart : cartList) {
				insertOrderDetail(cart, maxOrdcd);
				//System.out.println("maxOrdcd값:" + maxOrdcd);
			}
			// List<Object> selectMaxOseq =
			// sqlSession.selectList("dao.OrderListDao.selectMaxOseq", cartList);

		} catch (Exception e) {
			sqlSession.rollback();
		} finally {
			sqlSession.close();
		}
		return maxOrdcd;

	}

	public void insertOrderDetail(CartList cart, int maxOrdcd) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String, Object> map = new HashMap<String, Object>();
		//
		map.put("maxOrdcd", maxOrdcd);
		map.put("Prodcd", cart.getProdcd());
		map.put("Quantity", cart.getQuantity());

		try {
			sqlSession.insert("dao.OrderListDao.insertOrderDetail", map);
			sqlSession.commit();

			sqlSession.update("dao.OrderListDao.updateCartResult", cart.getCartcd());
			sqlSession.commit();
		} catch (Exception e) {
			sqlSession.rollback();
		} finally {
			sqlSession.close();
		}

	}

//	public List<Integer> selectSeqOrdering(String email) {
//		SqlSession sqlSession = sqlSessionFactory.openSession();
//		List<Integer> oseqList = new ArrayList<>();
//		try {
//
//			oseqList = sqlSession.selectList("dao.OrderListDao.selectSeqOrdering", email);
//			sqlSession.commit();
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			sqlSession.close();
//		}
//		return oseqList;
//	}

	public List<OrderList> listOrderByEmail(String email, String result, int ord_cd) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<OrderList> orderList = new ArrayList<>();
		try {

			Map<String, Object> map = new HashMap<>();
			map.put("email", email);
			map.put("result", result);
			map.put("ord_cd", ord_cd);
			orderList = sqlSession.selectList("dao.OrderListDao.listOrderByEmail", map);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return orderList;
	}

	public List<OrderList> selectMyOrderDetail(String email, int ord_cd) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<OrderList> ordcdlist = new ArrayList<>();
		try {
			Map<String, Object> map = new HashMap<>();
			map.put("email", email);
			map.put("ord_cd", ord_cd);
			ordcdlist = sqlSession.selectList("dao.OrderListDao.selectorderdetail", map);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return ordcdlist;
	}
	
	
	
	public List<Integer> selectSeqOrdering(String email,int page) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Integer> oseqList = new ArrayList<>();
		Map<String, Object> map = new HashMap<>();	
		try {
			map.put("email", email);
			map.put("page", page);
			
			oseqList = sqlSession.selectList("dao.OrderListDao.selectSeqOrdering", map);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return oseqList;
	} 
	
	
	public int selectcount(String email) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		try {	
			return sqlSession.selectOne("dao.OrderListDao.selectcount",email);
			
		} finally {
			sqlSession.close();
		}		
		
	}
	
	
}
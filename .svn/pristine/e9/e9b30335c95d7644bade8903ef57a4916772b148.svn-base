package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import dto.CartList;

public class CartListDao {
	
	private DataSource datasource;
	private SqlSessionFactory sqlSessionFactory;
	
	public void setDataSource(DataSource dataSource, SqlSessionFactory sqlSessionFactory) {
		this.datasource = dataSource;
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	

	public List<CartList> selectCart(String email) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			return sqlSession.selectList("dao.CartListDao.selectCart",email);

		} finally {
			sqlSession.close();
		}
	}
	
	public CartList selectOne(CartList cartlist) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			return sqlSession.selectOne("dao.CartListDao.selectOne",cartlist);

		} finally {
			sqlSession.close();
		}
	}
	
//	public  List<CartList> calculate(CartList cartlist) throws Exception {
//		SqlSession sqlSession = sqlSessionFactory.openSession();
//		try {
//			return sqlSession.selectOne("dao.CartListDao.calculateCart",cartlist);
//		} finally {
//			sqlSession.close();
//		}
//	}
	
	
	
	
	public int insert(int pseq,String email,int quantity) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String,Object>map=new HashMap<String,Object>();
		map.put("prodcd", pseq);
		map.put("email", email);
		map.put("quantity", quantity);
		try {
				int count=sqlSession.insert("dao.CartListDao.insertCart",map);
				sqlSession.commit();
				return count;
		} catch (Exception e) {
			sqlSession.rollback();
		} finally {
			sqlSession.close();
		}
		return -1;
	}
	
	public int update(int pseq,String email,int quantity,int quantity2) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String,Object>map=new HashMap<String,Object>();
		map.put("prodcd", pseq);
		map.put("email", email);
		int sum = quantity+quantity2;
		map.put("quantity", sum);
		try {
			//update
			int count=sqlSession.update("dao.CartListDao.updateCart",map);
			sqlSession.commit();	
			return count;
		} catch (Exception e) {
			sqlSession.rollback();
		} finally {
			sqlSession.close();
		}
		return -1;
	}
	
	
	public int update_delete(int pseq,String email,int quantity) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String,Object>map=new HashMap<String,Object>();
		map.put("prodcd", pseq);
		map.put("email", email);
		map.put("quantity", quantity);
		try {
			//update
			int count=sqlSession.update("dao.CartListDao.update_deleteCart",map);
			sqlSession.commit();	
			return count;
		} catch (Exception e) {
			sqlSession.rollback();
		} finally {
			sqlSession.close();
		}
		return -1;
	}
	
	
	
	public int delete(int pseq,String email) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String,Object>map=new HashMap<String,Object>();
		map.put("prodcd", pseq);
		map.put("email", email);
		
		try {
			int count = sqlSession.delete("dao.CartListDao.deleteCart", map);
			sqlSession.commit();
			return count;
		} catch (Exception e) {
			sqlSession.rollback();
		} finally {
			sqlSession.close();
		}
		return -1;
	}
	

}

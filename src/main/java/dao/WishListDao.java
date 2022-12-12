package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;


import dto.WishList;

public class WishListDao {
	private DataSource datasource;
	private SqlSessionFactory sqlSessionFactory;
	
	public void setDataSource(DataSource dataSource, SqlSessionFactory sqlSessionFactory) {
		this.datasource = dataSource;
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	
	
	public List<WishList> selectWish(String email) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			return sqlSession.selectList("dao.WishListDao.selectWish",email);

		} finally {
			sqlSession.close();
		}
	}
	
	public WishList selectOne(WishList wishlist) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			return sqlSession.selectOne("dao.WishListDao.selectOne",wishlist);

		} finally {
			sqlSession.close();
		}
	}
	
	
	
	
	public int insert(int pseq,String email) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String,Object>map=new HashMap<String,Object>();
		map.put("prodcd", pseq);
		map.put("email", email);
		try {
				int count=sqlSession.insert("dao.WishListDao.insertWish",map);
				sqlSession.commit();
				return count;
		} catch (Exception e) {
			sqlSession.rollback();
		} finally {
			sqlSession.close();
		}
		return -1;
	}
	
	public int update(int pseq,String email) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String,Object>map=new HashMap<String,Object>();
		map.put("prodcd", pseq);
		map.put("email", email);
		try {
			//update
			int count=sqlSession.update("dao.WishListDao.updateWish",map);
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
			int count = sqlSession.delete("dao.WishListDao.deleteWish", map);
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

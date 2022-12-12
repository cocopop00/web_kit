package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import dto.ProductQna;

public class ProductQnaDao {

	private DataSource datasource;
	private SqlSessionFactory sqlSessionFactory;
	
	public void setDataSource(DataSource dataSource, SqlSessionFactory sqlSessionFactory) {
		this.datasource = dataSource;
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	
	public int insert(ProductQna productqna)throws Exception{
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			int count = sqlSession.insert("dao.ProductQnaDao.insert", productqna);
			sqlSession.commit();
			return count;
		} catch (Exception e) {
			sqlSession.rollback();
		} finally {
			sqlSession.close();
		}
		return -1;
		
	}
	
	
	public List<ProductQna> selectlist(int prodcd, int page)throws Exception{
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String,Object> map = new HashMap<String,Object>();
		
		map.put("prodcd",prodcd);
		map.put("page",page);
		
		try {
			return sqlSession.selectList("dao.ProductQnaDao.selectlist", map);
		}finally {
			sqlSession.close();
		}
	}
	
	
	public int selectcount(int prodcd)throws Exception{
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			return sqlSession.selectOne("dao.ProductQnaDao.selectcount", prodcd);
		}finally {
			sqlSession.close();
		}
	}
	
	
	public ProductQna selectOne(int prodcd) throws Exception{
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			return sqlSession.selectOne("dao.ProductQnaDao.selectone", prodcd);
		}finally {
			sqlSession.close();
		}
	}
	
	public int deleteone(int prodqcd) throws Exception{
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		try {
			int count = sqlSession.delete("dao.ProductQnaDao.deleteone", prodqcd);
			sqlSession.commit();
			return count;
		}catch(Exception e) {
			sqlSession.rollback();
		}finally {
			sqlSession.close();
		}
		
		return -1;
	}
	
	
	public List<ProductQnaDao> selectmyqna(String email) throws Exception{
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			return sqlSession.selectList("dao.ProductQnaDao.selectmyqna", email);
		}finally {
			sqlSession.close();
		}
	}
	
}

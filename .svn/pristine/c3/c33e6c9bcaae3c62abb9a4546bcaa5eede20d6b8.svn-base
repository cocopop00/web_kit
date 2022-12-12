package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import dto.Product;

public class ProductDao {

	private DataSource datasource;
	private SqlSessionFactory sqlSessionFactory;

	public void setDataSource(DataSource dataSource, SqlSessionFactory sqlSessionFactory) {
		this.datasource = dataSource;
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	
//	public List<Product> selectlist() throws Exception{
//		
//		SqlSession sqlSession = sqlSessionFactory.openSession();
//		try {
//			
//			//System.out.println("dddd");
//			
//			return sqlSession.selectList("dao.ProductDao.selectlist");
//
//		} finally {
//			sqlSession.close();
//		}
//		
//	}
	
	
	public List<Product> selectkind(int kind, int page) throws Exception{
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String,Object> map = new HashMap<String,Object>();
		
		map.put("kind", kind);
		map.put("page", page);
		
		try {	
			return sqlSession.selectList("dao.ProductDao.selectkind",map);
			
		} finally {
			sqlSession.close();
		}		
		
	}
	
	
	public List<Product> selectNewBest(String best, String news,int page) throws Exception{
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String,Object> map = new HashMap<String,Object>();
		
		try {
			if(news.equals("y") && best.equals("n")) {
				map.put("best",best);
				map.put("news",news);
				map.put("page",page);
				
				return sqlSession.selectList("dao.ProductDao.selectnew",map);
			}
			else {
				return sqlSession.selectList("dao.ProductDao.selectbest");
			}
				
		} finally {
			sqlSession.close();
		}		
		
	}
	
	
	
	public List<Product> selectitem(int code)throws Exception {
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		try {
			
			return sqlSession.selectList("dao.ProductDao.selectitem",code);
			
		}finally {
			sqlSession.close();
		}
		
	}
	
	public Product orderitem(int code)throws Exception {
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		try {
			
			return sqlSession.selectOne("dao.ProductDao.orderitem",code);
			
		}finally {
			sqlSession.close();
		}
		
	}
	
	
	
	
	
	public int selectcount(int kind) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		try {
			return sqlSession.selectOne("dao.ProductDao.selectcount",kind);
		}finally {
			sqlSession.close();
		}
		
	}
	
	
	public int selectyncount(String best, String news) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String,Object> map = new HashMap<String,Object>();
		
		map.put("best",best);
		map.put("news",news);
		
		try {
			return sqlSession.selectOne("dao.ProductDao.selectyncount",map);
		}finally {
			sqlSession.close();
		}
		
	}
	
	
	public int selecteventcount(int eventcd) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		try {
			return sqlSession.selectOne("dao.ProductDao.selecteventcount",eventcd);
		}finally {
			sqlSession.close();
		}
		
	}
	
	
	
	public int selectsearchcount(String search) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		try {
			return sqlSession.selectOne("dao.ProductDao.selectsearchcount",search);
		}finally {
			sqlSession.close();
		}
	}
	
	
	public List<Product> selectnewlist(){
	
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		try {
			return sqlSession.selectList("dao.ProductDao.selectnewlist");
		}finally {
			sqlSession.close();
		}
		
	}
	
	
	public List<Product> selectbestlist(){
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		try {
			return sqlSession.selectList("dao.ProductDao.selectbestlist");
		}finally {
			sqlSession.close();
		}
		
	}
	
	
	public List<Product> selectevent(int eventcode, int page){
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String,Object> map = new HashMap<String,Object>();
		
		map.put("eventcd",eventcode);
		map.put("page",page);
		
		
		try {
			return sqlSession.selectList("dao.ProductDao.selectevent",map);
		}finally {
			sqlSession.close();
		}	
		
	}
	
	
	public int insertpd(Product product) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			int count = sqlSession.insert("dao.ProductDao.insert", product);
			sqlSession.commit();
			return count;
		} catch (Exception e) {
			sqlSession.rollback();
		} finally {
			sqlSession.close();
		}
		return -1;
	}
	
	
	public int selectprodmax() {
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		try {
			return sqlSession.selectOne("dao.ProductDao.selectprodmax");
		}finally {
			sqlSession.close();
		}
		
	}
	
	
	public int insertimage(int prodcd,int imagenum, String image) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String,Object> map = new HashMap<String,Object>();
		
		map.put("image", image);
		map.put("imagenum", imagenum);
		map.put("prodcd", prodcd);
		
		try {
			int count = sqlSession.insert("dao.ProductDao.insertimage", map);
			sqlSession.commit();
			return count;
		} catch (Exception e) {
			sqlSession.rollback();
		} finally {
			sqlSession.close();
		}
		return -1;
		
		
	}
	
	
	
	public List<Product> selectsearch(String search, int page){
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String,Object> map = new HashMap<String,Object>();
		
		map.put("search", search);
		map.put("page", page);
		
		try {
			return sqlSession.selectList("dao.ProductDao.selectsearch",map);
		}finally {
			sqlSession.close();
		}	
		
	}
	
	

}

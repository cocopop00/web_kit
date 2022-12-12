package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import dto.Review;

public class ReviewDao {

	private DataSource datasource;
	private SqlSessionFactory sqlSessionFactory;

	public void setDataSource(DataSource dataSource, SqlSessionFactory sqlSessionFactory) {
		this.datasource = dataSource;
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	
	public int selectmax(){
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		try {
			int count = sqlSession.selectOne("dao.ReviewDao.selectmax");
			sqlSession.commit();
			return count;
		} catch (Exception e) {
			sqlSession.rollback();
		} finally {
			sqlSession.close();
		}
		return -1;
		
	}
	
	
	
	public int insertimage(int reviewcd,int imagenum, String image) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		Map<String,Object> map = new HashMap<String,Object>();
		
		map.put("reviewcd", reviewcd);
		map.put("imagenum", imagenum);
		map.put("image", image);
		
		try {
			int count = sqlSession.insert("dao.ReviewDao.insertimage", map);
			sqlSession.commit();
			return count;
		} catch (Exception e) {
			sqlSession.rollback();
		} finally {
			sqlSession.close();
		}
		return -1;	
		
	}
	
	
	
	public int insertpd(Review review) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			int count = sqlSession.insert("dao.ReviewDao.insertpd", review);
			sqlSession.commit();
			return count;
		} catch (Exception e) {
			sqlSession.rollback();
		} finally {
			sqlSession.close();
		}
		return -1;
	}
	
	
	
	public List<Review> selectlist(int page){
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		try {	
			return sqlSession.selectList("dao.ReviewDao.selectlist",page);
			
		} finally {
			sqlSession.close();
		}		
		
	}
	
	
	
	public int selectcount() {
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		try {	
			return sqlSession.selectOne("dao.ReviewDao.selectcount");
			
		} finally {
			sqlSession.close();
		}		
		
	}
	
	
	
	public List<Review> selectreviewdetail(int reviewcode){
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		try {	
			return sqlSession.selectList("dao.ReviewDao.selectreviewdetail",reviewcode);
			
		} finally {
			sqlSession.close();
		}	
		
	}
	
	
	
	public int updaterecom(int recomnum, int reviewcd) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String,Object> map = new HashMap<String,Object>();
		
		map.put("recomnum", recomnum+1);
		map.put("reviewcd", reviewcd);		
		
		try {
			int count = sqlSession.update("dao.ReviewDao.updaterecom", map);
			sqlSession.commit();
			return count;
		} catch (Exception e) {
			sqlSession.rollback();
		} finally {
			sqlSession.close();
		}
		return -1;
		
	}
	
	
	public List<Review> selectmyreview(String email){
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		try {	
			return sqlSession.selectList("dao.ReviewDao.selectmylist",email);
			
		} finally {
			sqlSession.close();
		}	
		
	}
	
	
}

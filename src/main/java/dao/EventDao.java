package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.ui.Model;

import dto.Event;


public class EventDao {
	
	private DataSource datasource;
	private SqlSessionFactory sqlSessionFactory;

	public void setDataSource(DataSource dataSource, SqlSessionFactory sqlSessionFactory) {
		this.datasource = dataSource;
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	
	public List<Event> selectList(int page) throws Exception {
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			return sqlSession.selectList("dao.EventDao.selectList",page);

		} finally {
			sqlSession.close();
		}
	}
	
	
	public List<Event> selectone_list(String yn,int page) throws Exception{
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String,Object>map = new HashMap<String,Object>();
		
		map.put("yn", yn);
		map.put("page", page);
		
		try {
			return sqlSession.selectList("dao.EventDao.selectone_list",map);
		}finally {
			sqlSession.close();
		}
		
	}
	
	
	public List<Event> selectone(int number) throws Exception {
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		try {
			return sqlSession.selectList("dao.EventDao.selectone", number);
		}finally {
			sqlSession.close();
		}
		
	}
	
	
	public Event selectyn_count()throws Exception{
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		try {
			return sqlSession.selectOne("dao.EventDao.selectyn_count");
		}finally {
			sqlSession.close();
		}
		
	}
	
	
	
	
	public int eventyn_update(int code, int num) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			Event event = new Event();
			event.setEvent_cd(code);
			event.setRecom_num(num+1);
			int count = sqlSession.update("dao.EventDao.eventyn_update",event);
			sqlSession.commit();
			return count;
		}catch(Exception e) {
			
			sqlSession.rollback();
		}
		finally {
			sqlSession.close();
		}
		return -1;
	}
	
	
	
}

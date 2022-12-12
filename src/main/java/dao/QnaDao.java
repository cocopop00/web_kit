package dao;

import java.util.List;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import dto.Notice;
import dto.Qna;

public class QnaDao {
	@Autowired
	private DataSource dataSource;
	private SqlSessionFactory sqlSessionFactory;
	
	public void setDataSource(DataSource dataSource, SqlSessionFactory sqlSessionFactory) {
		this.dataSource = dataSource;
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	public List<Qna> selectList(String email) throws Exception{
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			return sqlSession.selectList("dao.QnaDao.selectList",email);
		} finally {
			sqlSession.close();
		}
	}
	
	public int update(Qna Qna) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			int count = sqlSession.update("dao.Qna.update", Qna);
			sqlSession.commit();
			return count;
		} catch (Exception e) {
			sqlSession.rollback();
		} finally {
			sqlSession.close();
		}
		return -1;
	}
	
	
	public int delete(int qnacd) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			int count = sqlSession.delete("dao.QnaDao.delete", qnacd);
			sqlSession.commit();
			return count;
		} catch (Exception e) {
			sqlSession.rollback();
		} finally {
			sqlSession.close();
		}
		return -1;
	}
	
	public int insert(Qna Qna) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			int count = sqlSession.insert("dao.QnaDao.insert", Qna);
			//count = sqlSession.insert("dao.QnaDao.insertimg", Qna);
			sqlSession.commit();
			
			return count;
		} catch(Exception e) {
			sqlSession.rollback();
		} finally {
			sqlSession.close();
		}
		return -1;
	}
	
	public List<Qna> selectDetail(int qnacd) throws Exception{
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			return sqlSession.selectList("dao.QnaDao.selectDetail", qnacd);
	
		} finally {
			sqlSession.close();
		}
	}
	
	
	
	public Qna selectOne(int qnacd) throws Exception{
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			return sqlSession.selectOne("dao.QnaDao.selectOne", qnacd);
	
		} finally {
			sqlSession.close();
		}
		
	}
	
	
	public List<String> selectimages(int qnacd) throws Exception{
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			return sqlSession.selectList("dao.QnaDao.selectimages", qnacd);
	
		} finally {
			sqlSession.close();
		}
	}
	
}



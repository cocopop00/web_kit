package dao;

import java.util.List;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dto.Notice;


@Repository
public class NoticeDao {
	@Autowired
	private DataSource datasource;
	private SqlSessionFactory sqlSessionFactory;
	
	public void setDataSource(DataSource dataSource, SqlSessionFactory sqlSessionFactory) {
		this.datasource = dataSource;
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	public List<Notice> selectList() throws Exception {
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			return sqlSession.selectList("dao.NoticeDao.selectList");

		} finally {
			sqlSession.close();
		}
	}
	public List<Notice> selectDetail(int noticd) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			return sqlSession.selectList("dao.NoticeDao.selectDetail", noticd);
		} finally {
			sqlSession.close();
		}
	}
	
	
	
	
}

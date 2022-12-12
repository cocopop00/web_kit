package dao;

import java.util.List;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dto.OftenQna;


@Repository
public class OftenQnaDao {
	@Autowired
	private DataSource datasource;
	private SqlSessionFactory sqlSessionFactory;
	
	public void setDataSource(DataSource dataSource, SqlSessionFactory sqlSessionFactory) {
		this.datasource = dataSource;
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	public List<OftenQna> selectList() throws Exception {
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			return sqlSession.selectList("dao.OftenQnaDao.selectList");

		} finally {
			sqlSession.close();
		}
	}
	
	public OftenQna selectOne(int oftqnacd) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			return sqlSession.selectOne("dao.OftenQnaDao.selectOne", oftqnacd);
		} finally {
			sqlSession.close();
		}
	}
	
}

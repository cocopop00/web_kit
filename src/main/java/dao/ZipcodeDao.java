package dao;

import java.util.List;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dto.ZipCode;

@Repository
public class ZipcodeDao {

	@Autowired

	private DataSource datasource;
	private SqlSessionFactory sqlSessionFactory;

	public void setDataSource(DataSource dataSource, SqlSessionFactory sqlSessionFactory) {
		this.datasource = dataSource;
		this.sqlSessionFactory = sqlSessionFactory;
	}

	public List<ZipCode> selectzip(String code) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();

		try {
			return sqlSession.selectList("dao.ZipDao.selectzip", code);

		} finally {
			sqlSession.close();

		}

	}
}

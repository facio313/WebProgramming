package site.dao;

import java.sql.SQLException;

import com.ibatis.sqlmap.client.SqlMapClient;

import res.config.BuildedSqlMapClient;

public class BoardDaoImpl implements IBoardDao {
	
	private SqlMapClient smc;
	
	// 싱글톤 패턴 적용 
	// 특징 1. private한 Constructor
	// 특징 2. static method
	private static IBoardDao dao;
	private BoardDaoImpl() {
		smc = BuildedSqlMapClient.getSqlMapClient();
	}
	
	public static IBoardDao getInstance() {
		if (dao == null) {
			dao = new BoardDaoImpl();
		}
		
		return dao;
	}
	
	@Override
	public int countList() throws SQLException { 
//		int count = (int) smc.queryForObject("sql문의 id를 연결해서 데이터를 받아옴");
//		int count = (int) smc.queryForObject("namespace.id");
		int count = (int) smc.queryForObject("board.countList");
		return count;
	}

}

package site.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import res.config.BuildedSqlMapClient;
import site.vo.BoardVO;

public class BoardDaoImpl implements IBoardDao {
	
	private SqlMapClient smc;
	
	// 싱글톤 패턴 적용 
	// 특징 1. private한 Constructor
	// 특징 2. static method
	private static BoardDaoImpl dao;
	private BoardDaoImpl() {
		smc = BuildedSqlMapClient.getSqlMapClient();
	}
	
	public static BoardDaoImpl getInstance() {
		if (dao == null) {
			dao = new BoardDaoImpl();
		}
		
		return dao;
	}
	
	@Override
	public int countList() throws SQLException { 
//		int count = (int) smc.queryForObject("sql문의 id를 연결해서 데이터를 받아옴");
//		int count = (int) smc.queryForObject("namespace.id", 매개변수); // id는 보통 메서드랑 같은 걸로 한다.
		int count = (int) smc.queryForObject("board.countList");
		return count;
	}

	public List<BoardVO> boardList(Map<String, Object> map) throws SQLException {
		return smc.queryForList("board.boardList", map);
	}

	@Override
	public int insertBoard(BoardVO vo) throws SQLException {
		return (int)smc.insert("board.insertBoard", vo);
	}

}

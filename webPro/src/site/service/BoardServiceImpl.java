package site.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import site.dao.BoardDaoImpl;
import site.dao.IBoardDao;
import site.vo.BoardVO;

public class BoardServiceImpl implements IBoardService {

	private BoardDaoImpl dao;
	private static BoardServiceImpl service;
	private BoardServiceImpl() {
		dao = BoardDaoImpl.getInstance();
	}
	
	public static BoardServiceImpl getInstance() {
		if (service == null) {
			service = new BoardServiceImpl();
		}
		
		return service;
	}
	@Override
	public int countList() {
		
		int cnt = 0;
		try {
			cnt = dao.countList();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return cnt;
	}

	public List<BoardVO> boardList(Map<String, Object> map) {
		List<BoardVO> list = null;
		try {
			list = dao.boardList(map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int insertBoard(BoardVO vo) {
		int insertBoard = 0;
		try {
			insertBoard =  dao.insertBoard(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return insertBoard;
	}

}

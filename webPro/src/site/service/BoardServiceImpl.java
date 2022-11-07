package site.service;

import site.dao.BoardDaoImpl;
import site.dao.IBoardDao;

public class BoardServiceImpl implements IBoardService {

	private IBoardDao dao;
	private static IBoardService service;
	private BoardServiceImpl() {
		dao = BoardDaoImpl.getInstance();
	}
	
	public static IBoardService getInstance() {
		if (service == null) {
			service = new BoardServiceImpl();
		}
		
		return service;
	}
	@Override
	public int countList() {
		// TODO Auto-generated method stub
		return 0;
	}

}

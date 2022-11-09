package site.dao;

import java.sql.SQLException;

import site.vo.BoardVO;

public interface IBoardDao {

	// 전체 글 개수 조회
	public int countList() throws SQLException; // 서비스 쪽으로 책임 전가
	
	//  게시글 등록
	public int insertBoard(BoardVO vo) throws SQLException;
}

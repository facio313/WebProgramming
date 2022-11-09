package site.service;

import site.vo.BoardVO;

public interface IBoardService {

	// 전체 글 개수 조회
	public int countList();
	
	//  게시글 등록
	public int insertBoard(BoardVO vo);
}

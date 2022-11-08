package site;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import site.service.BoardServiceImpl;
import site.vo.BoardVO;

@WebServlet("/Index.do")
public class Index extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Index() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		// board 게시판 정보를 읽어와서 응답해봅시다. 
		// Service 객체 필요 (Controller <=> Service <=> Dao <=> SqlMapClient(DB)
		BoardServiceImpl service = BoardServiceImpl.getInstance();
		
		//전체 글 개수 가져오기
		int count = service.countList();
		
		// 현재 페이지 값(default 1page)
		int currentPage = 1;
		
		// 한 화면에 출력할 페이지 수
		int perPage = 4;
		
		// 한 페이지에 출력할 글 개수
		int perList = 5;
		
		// 전체 페이지 수 구하기 = (공식 : 전체 글 개수 / 페이지당 글 개수)
		// double형으로 소수점을 발생시켜 연산해야 정상적인 값을 얻는다.
		int totalPage = (int) Math.ceil((double)count/perList);
		
		System.out.println(totalPage);
		
		// 페이지에 표시될 게시글의 개수 start/end 값 구하기
		// (공식 : (현재 페이지 -1) - 한 페이지에 출력할 글 개수 + 1)
		int start = (currentPage - 1) * perList + 1;
		
		// (end공식 : start - 한 페이지에 출력할 글 개수 -1)
		int end = start + perList - 1;
		// 전체 글 개수보다 게시글의 끝 값이 더 클 경우, 처리
		if (end> count) end = count;
		
		// 화면에 보여질 페이지 번호 구하기
		// (startPage 공식 : ((현재 페이지 - 1) / 화면출력페이지 수*화면출력페이지 수) + 1)
		int startPage = ((currentPage - 1) / perPage * perPage) + 1;

		// (endPAge 공식 : startPage + 화면출력페이지 수 - 1)
		int endPage = currentPage + perPage - 1;
		// totalPage보다 endPage의 값이 더 클 경우, 처리
		if (endPage > totalPage) {
			endPage = totalPage;
		}
		
		Map<String, Object> map = new HashMap<>();
		map.put("start", start);
		map.put("end", end);
		
		List<BoardVO> list = service.boardList(map);
		
		request.setAttribute("list", list);
		request.setAttribute("sPage", startPage);
		request.setAttribute("ePage", endPage);
		request.setAttribute("ttPage", totalPage);
		request.setAttribute("cPage", currentPage);
		
		
		// RequestDispatcher disp = request.getRequestDispatcher("이동할 jsp주소, 경로를 지정");
		RequestDispatcher disp = request.getRequestDispatcher("WEB-INF/test/index.jsp");
		disp.forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}

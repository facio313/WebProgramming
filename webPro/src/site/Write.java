package site;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import site.service.BoardServiceImpl;
import site.vo.BoardVO;

@WebServlet("/Write")
public class Write extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Write() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		BoardVO vo = new BoardVO();
		// 내용을 쉽게 받기 위해 BeanUtils 사용
		try {
			BeanUtils.populate(vo, request.getParameterMap()); // VO와 jsp에서 name이 일치해야 함
		} catch (IllegalAccessException | InvocationTargetException e) {
			e.printStackTrace();
		}
		vo.setWip(request.getRemoteAddr()); // 클라이언트 ip 받기
		
		BoardServiceImpl service = BoardServiceImpl.getInstance();
		int seq = service.insertBoard(vo);
		
		PrintWriter writer = response.getWriter();
		writer.print(seq);
		
	}

}

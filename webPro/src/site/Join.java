package site;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Join")
public class Join extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Join() {
    	super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("======================접근======================");
		
		// 결과를 처리하고 응답 데이터를 담은 객체를 view 페이지로 보내줘야 함
//		request.getRequestDispatcher("이동할 jsp위치 경로 지정");
		RequestDispatcher disp = request.getRequestDispatcher("WEB-INF/test/join.jsp");
		disp.forward(request, response);
	}
}

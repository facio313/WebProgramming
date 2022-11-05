package site;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Join") // 그냥 얘 자체의 이름! header.jsp에서 Join의 ContextRoot까지 넣은 것과는 다름
public class Join extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Join() {
    	super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession(false); // 아무 것도 안 넣거나 true를 넣으면 : 현재 세션이 존재하면 기존 세션 리턴, 기존세션이 없다면  새로 생성
		// false면 현재 세션이 존재하면 기존 세션 리턴, 기존 세션이 없다면 null값 리턴
		session.setAttribute("joinCode", "yes");
		
		// 결과를 처리하고 응답 데이터를 담은 객체를 view 페이지로 보내줘야 함
//		request.getRequestDispatcher("이동할 jsp위치 경로 지정");
		RequestDispatcher disp = request.getRequestDispatcher("site/index.jsp");
		disp.forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}

package ks;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.hc.client5.http.fluent.Request;

/**
 * Servlet implementation class Api
 */
@WebServlet("/Api")
public class Api extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Api() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		// URL 규칙(ASCII로 표현)에 맞게 한글을 인코딩 해줘야 함
		// URLEncoder URLDecoder
//		String keywd = URLEncoder.encode(request.getParameter("kwd"), "utf-8");
		String keywd = request.getParameter("kwd");
		
		String rtnStr = Request.get("https://news.google.com/rss/search?q=" + keywd +"&hl=ko&gl=KR&ceid=KR:ko").execute().returnContent().asString();
		
		PrintWriter out = response.getWriter();
		out.print(rtnStr); // 요청 받은 곳으로 출력
	}

}

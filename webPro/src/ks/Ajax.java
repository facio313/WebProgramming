package ks;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ajax")
public class Ajax extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Ajax() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String nm = request.getParameter("aaa");
		System.out.println("전달된 내용 >> " + nm);
		
		response.setCharacterEncoding("utf-8");
		// PrintWriter : 서블릿으로 들어온 요청을 텍스트 형태로 응답하기 위한 출력 스트림
		PrintWriter out = response.getWriter();
		out.print("<h1>로보카" + nm + "</h1>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String param = request.getParameter("key");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		out.print("{\"key\":\"" + param + "\"}"); // json object 형태의 데이터를 전달
	}

}

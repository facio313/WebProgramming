<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="com.google.gson.JsonObject"%>
<%@page import="com.google.gson.JsonArray"%>
<%@page import="com.google.gson.JsonParser"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="site.MemberVO"%>
<%@page import="org.apache.commons.beanutils.BeanUtils"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<%

	request.setCharacterEncoding("UTF-8");

	MemberVO vo = new MemberVO();
	Map<String, Object> map = new HashMap<>();
	
	BufferedReader rd = request.getReader(); // request.getReader - BufferedReader 객체를 반환받는다
	String jsonData = rd.readLine();
	
// 	System.out.println(jsonData);
	
	// GSON library : 자바에 대한 JSON 데이터 바인딩 지원을 제공하는 라이브러리
	// JsonParser를 생성하여 parse()를 이용해 Object로 parsing할 수 있다.
	
	JsonParser jsonParser = new JsonParser();
	JsonArray jsonArray = (JsonArray)jsonParser.parse(jsonData);
	// 배열의 값을 루프 돌면서 객체 빼내기
	
	for(int i = 0; i < jsonArray.size(); i++) {
		JsonObject jsonObj = (JsonObject)jsonArray.get(i);
		String key = jsonObj.get("name").getAsString();
		String value = jsonObj.get("value").getAsString();
		map.put(key, value);
	} // foreach로 하면?,,
	
	BeanUtils.populate(vo, map);
	
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "in91", "java");
	
	String sql = " INSERT INTO MEMBER (mem_id, mem_pass, mem_name, mem_bir, mem_zip, mem_add1, mem_add2, mem_hp, mem_mail) "
		 	+ " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	pstmt.setString(1, vo.getMem_id());
	pstmt.setString(2, vo.getMem_pass());
	pstmt.setString(3, vo.getMem_name());
	pstmt.setString(4, vo.getMem_bir());
	pstmt.setString(5, vo.getMem_zip());
	pstmt.setString(6, vo.getMem_add1());
	pstmt.setString(7, vo.getMem_add2());
	pstmt.setString(8, vo.getMem_hp());
	pstmt.setString(9, vo.getMem_mail());
	
	int a = pstmt.executeUpdate();
	System.out.println("???????" + a);
%>
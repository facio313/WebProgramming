<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
����� jsp������...

<%
	// �ش� ��ȣ ���ʿ� �ڹ� �ڵ带 �Է��� �� �־��
	// �ּ��� �� ���ʿ��� Ȱ���� �� ����
	
	//getParameter()�� String Ÿ������ ��������
	String userId = request.getParameter("id");
	String userPw = request.getParameter("pw");

%>
����� ���̵�� <%=userId %> <br>
��й�ȣ�� <%= userPw %>�̱���!!
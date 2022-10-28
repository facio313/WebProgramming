JSP, Servlet은 모두 자바로 웹 애플리케이션을 만들기 위한 도구

JSP(Java Server Page)
- 확장자 = .jsp
- html 문서 안에 자바 언어를 삽입해 사용할 수 있도록 해줌
- Servlet으로 다 할 수 있지만 그렇게 하기 짜증나서 쉽게 만들 수 있는 JSP를 만듬

Servlet
- 확장자 = .java
- 자바의 일반적인 클래스와 동일한 개념
- 웹을 다룰 수 있도록 해주는 HttpServlet 클래스를 상속받은 클래스
서블릿(Servlet)은 클라이언트 요청을 처리하고, 그 결과를 반환하는 웹 프로그래밍 기술이다. 
클라이언트가 요청을 하면 그에 대한 결과를 다시 전송해주는 역할을 자바 프로그램이 하는 것이다. 
이전의 웹 프로그램들은 클라이언트의 요청에 대한 응답으로 만들어진 페이지를 넘겨주었다. 
웹 프로그래밍이 점점 발전하면서 응답을 가공하여 동적인 페이지를 작성할 수 있게 되었다. 
적인 페이지를 제공하기 위해서는 웹서버가 다른 곳에 도움을 요청하여 동적인 페이지를 작성하게된다.
Servlet을 사용해 웹을 만들 경우 화면 인터페이스 구현이 까다롭다는 단접을 보완하기 위해 만들어진 스크립트 언어가 JSP
Servlet 스펙에 맞게 작성!

서블릿 컨테이너는 개발자가 웹서버와 통신하기 위하여 소켓을 생성하고,
 특정 포트에 리스닝하고, 스트림을 생성하는 등의 복잡한 일들을 할 필요가 없게 해준다. 
컨테이너는 servlet의 생성부터 소멸까지의 일련의 과정(Life Cycle)을 관리한다. 
서블릿 컨테이너는 요청이 들어올때마다 새로운 자바 스레드를 만든다. 
우리가 알고 잇는 대표적인 Servlet Container가 Tomcat이다. 
톰캣같은 was가 java파일을 컴파일해서 Class로 만들고 메모리에 올려 servlet 객체를 만든다.

서블릿 생명주기
init() - 서버가 켜질때 한번만 실행
service - 모든 유저들의 요청들을 받는다.
destroy() - 서버가 꺼질때 한번만 실행

********************
Servlet : 클라이언트의 요청에 대한 처리와 결과를 반환하는 웹 프로그래밍 기술
- 클라이언트의 요청에 대한 결과를 다시 전송해주는 역할을 자바 프로그램이 하는 것

- Client <=> Web server <=> Web Application Server <=> DataBase
                                      ㄴ  WAS 안에 Servlet Container가 요청을 처리하고 결과를 반환함(동적 페이지 제공)
- Servlet 사용의 이점
Servlet 사용 시 HTTP의 Request와 Response를 직접 해석하고 처리하는 것을 
Servlet의 통해 요청 메시지를 읽고 응답해주는 역할로 대신할 수 있다.
그래서 개발자는 비지니스 로직에만 집중하면 되도록 해준다.

1. 클라이언트(웹 브라우저)가 URL 입력(호출) 시 HTTP Request가 Servlet Container로 전송된다
- Client => WEB => WAS -> JVM -> Servlet Containter (?????????????????? 맞는지 몰겟다)
2. Servlet Container는 HttpRequest와 HttpResponse 객체를 생성한다
3. 요청 URL이 어느 서블릿에 대한 것인지 web.xml에서 찾는다.
	- 미리 서블릿을 만들어 놓고 그 중에서 찾게 된다.

중요한 객체
HttpServletRequest
HttpServletResponse
HttpSesstion
HttpServletContext

https://m.blog.naver.com/acornedu/221128616501 정리하기

https://codevang.tistory.com/191
https://12bme.tistory.com/555

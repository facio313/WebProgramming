---
layout: post
title: MVC pattern
description: 디자인 패턴 중 MVC 패턴에 대해서 알아보자
date: 2022-11-02
published: true
categories: Java
tags: [java, MVC패턴, 디자인 패턴, design pattern]
---
* 디자인 패턴 : 개발 시 흔히 나타나는 문제점들을 정형화된 방법론 같은 틀을 만들어 좀 더 쉽게 해결하거나 개선하게 해주는 코드

# MVC
애플리케이션이나 프로젝트 등을 구성할 때 크게 세 가지로 나눈다. MVC패턴을 휴대전화에 비유하자면 뷰는 보여지는 외관(혹은 디스플레이)이고 모델은 음량 올리기 내리기 등의 기능, 컨트롤러는 프로그램을 제어하는 것이다.
   
### Model
데이터와 관련된 일을 하는 것으로 가공하거나 저장하는 일 등을 하는데 즉, 애플리케이션의 데이터를 표현하는 것이다. 비즈니스, 데이터베이스 관련 로직만 신경쓰면 된다. 
- DAO와 DO,VO와 연관되어 있다.
   
### View
실제 클라이언트에게 보여지는 화면을 설계하는 부분으로 데이터를 볼 수 있게 시각적으로 표현하는 것이다. JSP가 대표적으로 결과값을 출력한다거나 클라이언트의 요청을 받을 수 있게 한다. 또한 사용자가 데이터를 입력할 수 있는 환경 등을 만든다.
- UI, HTML, CSS, JSP 등
   
### Controller
Model과 View 즉, 클라이언트가 View를 통해 Request를 하면 Model에서 Request를 여러 데이터로 변환할 수 있도록 연결해주는 매개체이다. 애플리케이션의 흐름을 제어하는 부분으로 사용자 인증, 보안 설정 등을 담당한다. Servlet이 대표적으로 업무분장으로 유지보수와 보안 등을 장점으로 삼는다. 즉 코드 간의 종속성을 줄이고 구성 요소 간의 역할을 명확한게 하는 것이다. 코드 분리와 협업에 큰 이점이 있다.
1. 뷰를 통해 전달된 사용자의 요청을 분석한다.
2. 사용자가 입력한 데이터를 얻어온다.
3. 모델 클래스 객체를 생성하고 메서드를 호출하거나 반환된 데이터를 저장한다.
4. 페이지에서 이동하거나 이동할 페이지를 선택한다.
5. 유효성 검사도 한다.
   - Controller, Service

#MVC 패턴으로 프로젝트 만들기
##View
##Controller
##Service
##DAO
##VO
##Database




###Interface
    - Service, Dao의 Interface를 만들어 구현클래스에서 implements하고 Override한다.
    - Service, Dao의 구현클래스에서 싱글톤 객체를 사용한다.(싱글톤 글 참고)

테이블 만들기 –DB설계 create table memo ( no Number, title varchar2(100), content varchar2(1000), writer varchar2(50), register_date date default sysdate, modify_date date, CONSTRAINT pk_memo PRIMARY KEY (no) );
drop table memo;

시퀀스 만들기 user(in91) - 시퀀스 - 오른쪽 마우스 - 새 시퀀스 - 이름 적고 - 확인

자바 패키지(memo)하나 만들기

클래스(*MVC패턴) -MemoApplication (main) -MemoView(뷰) -MemoController(컨트롤러) -MemoService(모델) -MemoDAO(모델) *개발 순서 : View - Controller - Service - DAO *원론 순서 : DAO - Service - Controller - View – Memo앱은 원론 순서로 만들었음

-DAO 만들기 *DAO에서 받아온 것들을 담을 MemoVO클래스의 메소드를 만들어야 됨 -Dao걸 Service로 불러와야 함 *Service가 필요 없어 보이긴 함 *모델에서 Service와 DAO를 나눈 이유 *Select *Update Service는 트랜잭션 단위 Service : - Controller에 의해 호출되어 실제 비즈니스 로직과 트랜잭션을 처리 - dao를 호출하여 DB CRUD를 처리 후 Controller로 반환 dao : - Service에 의해 호출되어 DB CRUD를 담당
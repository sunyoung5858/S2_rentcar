<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	# request
	1. jsp에서 client단에 있는 정보를 서버단에 전송해서, 서버단에서 받을 때 사용하는 객체.
		- request.getParameter()
		- request.getParameter()
		- request.getParameter()
		- request.getParameter()
		- request.getParameter()
		
	2. 기능내용
		1) 요청값 처리(*)
		2) 쿠키정보 전달
		3) request 범위 데이터 저장
		4) 기타 클라이언트에서 전달되어서 서버단에서 처리하는 기능메서드
	# 요청값 처리 단계별 학습내용.
	1. query string이란 무엇인가?
		서버에 있는 jsp/서버의 servlet 등에 client가 데이터를 전송하는 규칙
		페이지? key = value & key2 = value2 & key3 = value3
		주의) query string은 클라이언트 단 프로그램이 처리한다.
	2. 서버단에서 받는 request의 메서드
		request.getParameter("key") : value
		String val = request.getParameter("key")
		// 클라이언트에서 받은 key의 value를 string값으로 request해주는 메서드.
		클라이언트 => name = "id" , value = "홍길동"
		서버로 전달 =>
		String reqId = request.getParameter("id");
		// reqId에 클라이언트의 key(id)의 value("홍길동")값이 String 변수로 사용될 수 있게 저장된다.
		// 이제 서버에서 쓸 수 있는겁니다. 이제 클라이언트의 id의 value값은 서버단의 것입니다 하하하하하하하하
	3. form 요소객체와 query string과의 관계
		페이지?
	4. form 있는 속성
		요소 객체의 속성을 통한 데이터 처리
		- action
		- method : get/post
			get방식 : url로 요청값을 전송하는 방식. 요청값의 용량 제한, 보안적으로 노출
			post방식 : url로 요청값을 전달하지 않고, 내부적으로 요청 header에서 처리.
					  요청값의 용량제한이 없고, 보안적으로 적합.
				  ==> 한글을 encoding을 처리하여야 한다.
				  	request.setCharacterEncoding("utf-8");
	5. 다양한 query string 처리 예시
		0) front단(html form)
			- url로 바로 요청값 입력
			- form action="요청jsp"
				name="key" value="val"
		1) front단(js)
			- location.href="a01.jsp?id="+idVal+"&pwd="+passVal
			<a href="a02.jsp?id=himan&pwd=7777">특정페이지 호출</a>
		2) back단(jsp)
			조건문에서 처리
			response.sendRedirect("a02.jsp?pname=사과&price=3000")
			==> backend(서버단 결정) => front단에서 a02_jsp를 받아서
			==> backedn(서바단 호출)
		* 결국은 query string 요청값을 client(브라우저)에서 호출하는 것으로
		  서버단에서 이러한 요청값을 전달하여 요청객체에 다시 보내고 어쨋든 비효율적이라함
	6. 단일 데이터 전송과 다중 데이터 전송
	7. form 요소 객체, dao와 연동하여
		1) 조회
		2) 등록
		3) 수정
		4) 삭제처리
	
# query string에 의해 데이터 받기..
	a02_request.jsp? name="홍길동"
	?name=홍길동&&age=25&&loc=서울
	query string으로 age, loc로 나이와 사는 곳의 데이터를 입력하고,
	화면에 나이와 사는 곳의 정보를 출력	

//
	String korS = request.getParmeter("kor")
	String mathS = request.getParmeter("math")
	
	int kor = 0;
	if(korS!=null){
		kor = Integer.parseInt(korS);
	}
	int math = 0;
	if(mathS!=null){
		math = Integer.parseInt(mathS);
	}
	int tot = kor+math
	
 --%>
 	<h2>query string 통해서 데이터 받기</h2>
 	<h3>이름: <%=request.getParameter("name") %></h3>
 	<h3>나이: <%=request.getParameter("age") %></h3>
 	<h3>사는곳: <%=request.getParameter("loc") %></h3>
 
 	<%--
 	연습문제. a04_req 
 	구매물품 : @@
 	구매가격 : @@
 	구매갯수 : @@
 	총액 : @@
 	1. 우선 데이터를 구매갯수까지 출력하고
 	2. 가격과 갯수를 형변환 처리하여 총액을 변수에 할당한 후,
 	3. 총액과 함께 전체 데이터를 요청값에 의해 출력하세요.
 	
 	 --%>
 
</body>
</html>
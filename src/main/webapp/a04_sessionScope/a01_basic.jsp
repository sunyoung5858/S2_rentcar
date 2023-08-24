<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <title>Insert title here</title>
</head>
<%--
# session scope
1. jsp는 session의 범위를 총 4가지로 유지할 수 있게 한다.
	저장위치:서버단에 저장..
	ps. 기존 변수들을 크기/유형에 따라 구분
		기본유형 => object ==> Array
		jsp에서는 기본변수+scope(어디까지 이 변수가 유지가 되느냐)
2. 범위 내용
	1) page영역 : 하나의 jsp페이지를 처리할 때 사용되는 영역
		실제 객체 : pageConext
		jsp script에서 저장되는 영역..
		
		현재 페이지에서 변수선언 ==> 이 페이지에서만 사용하고, 다른 페이지에서 사용 불가.
		
		
	2) request영역 : 하나의 http요청을 처리할 때, 사용되는 영역
	3) session영역 : 하나의 웹브라우저와 관련된 영역
	4) application영역 : 하나의 웹 어플리케이션과 관련된 영역
3. 설정 방법
	0) 저장 데이터는 기본 데이터유형, 배열, 객체...
	1) 저장
	    범위객체.setAttribute("저장할키", 저장할데이터)
	2) 저장된 내용 호출
		할당할 변수 = 범위객체.getAttribute("저장된키")
	3) 삭제
		범위객체.removeAttribute("저장된키")	
4. 각 범위에 따른 처리
	1) pageConext(page)
		페이지 범위까지만 처리된다.
	2) request (==> forward와 함께 사용)
		request.getRequestDispatcher(이동할페이지).forward(request,response);
		특정 내용을 호출하여 이동할 페이지까지 전송이된다.
		A.jsp					B.jsp									C.jsp
		<form action="B.jsp">	jsp?name=홍길동							request.getParameter("name")
		<input 															request.getParameter("auth")
		  name="name">
		 submit() 처리	=>		request.getParameter("name")
		 						if(name.equals("himan")){
		 							request.setAttribute("auth","admin");
		 							<jsp:forward page="C.jsp"/>
		 						}esle{
		 							location.href="A.jsp"
		 						}
		# request범위는 요청값을 가져오거나,
			request.setAttribute()에 의해 저장한 값을 forward 처리했을 때,
			다른 페이지더라도 사용할 수 있는 범위이다.
		
	3) session
		서버와 브라우저간에 연결 상태가 있을 때까지 지속되는 범위를 말한다.
		동일한 브라우저로 연결이 있는 상태에서는 a href, location.href로 호출하더라도 
		계속 연결이 되어 있기 때문에 설정된 session값을 가져올 수 있다.
		당연히 forward를 포함해서 
		A.jsp											B.jsp
		1. session.setAttribute("name","himan")
		2. <a href="B.jsp"
				location.href="B.jsp"
		3. response.sendRedirect("B.jsp");
		주의) request범위로 설정한 데이터는 위 코드로는 사라진다.	
		
		# 브라우저상 범위
		1. 브라우저를 닫지 않고,	B.jsp의 주소를 복사해서 붙여도 살아있다.
		2. 모든 브라우저를 닫고 B.jsp의 주소를 복사해서 붙여 넣으면 session은 사라진것을 볼 수 있다.
		3. 다른 브라우저를 열어서 B.jsp의 주소를 복사해도 사라진 것을 볼 수 있다.
		
		# 실무적 처리
		1. login ==> 인증되었을 때 DB id, pass 외 이름 권한 포인트 session에 할당.
		2. 페이지가 권한별로 접근할 때,
			session에 있는 권한과 비교해서 접근여부를 처리한다.
			Member mem = (Member)session.getAttribute("mem",)
			
			<li onclick="goMenu()">
			
			function goMenu(){
				var auth = <%=mem.getAuth()%>"
				if(auth=='admin'){
					location.href="admin.jsp"
				}else{
					alert("해당페이지는 권한이 없어 접근이 불가능합니다")
				}
			}
			
		# 게시판 작성자 입력
			1) session에 의해 작성자가 등록되는 경우
				# 효과1 : 자동등록된다.
					보이는 화면을 이름(중복가능한데이터)이 보인다.
					<input type="text" value="<%=mem.getName()%>"/>		
				# 효과2 : 식별할 수 있는 코드로 등록이 된다.
					실제 등록되는 내용을 id로 등록(식별자)이 된다.
					<input type="hidden" name="writer" value="<%mem.getId()%>"/>
				# 효과3
					수정/삭제시 등록한 사람만 비밀번호를 입력하지 않더라도 수정/삭제할 수 있다.
					function chValid(){
						var sesId = "<%=mem.getId()%>"
						var writeVal = document.querySelector("[name=writer]")
						if(sesId != writeVal){
							alert("수정/삭제는 등록자만 가능합니다")
					}
			2) 그렇지 않은 경우
				수정/삭제
				비밀번호
				비밀번호
				
	4) application
		서버가 살아 있는한 데이터를 지속적으로 저장하는 것을 말한다.
		위 page/request/session 범위를 포함..
		서버가 재기동 하지 않는 이상 범위의 값을 가지고 있다.
				
			
 --%>

<body>
    <div class="container mt-3">
    	<h2>session scope에 따른 데이터(page 범위)</h2>
    	<%
    	pageContext.setAttribute("page01", "페이지범위입니다^^");
    	request.setAttribute("request02", "리쿼스트범위입니다^^");
    	session.setAttribute("session03", "세션범위입니다^^");
    	application.setAttribute("application04", 
    			"어플리케이션범위입니다^^");
    	%>
    	
		<table class="table table-striped table-hover">
		    <tbody>
			   	<tr  class="text-center">
			        <td><%=pageContext.getAttribute("page01")%></td>
			   	</tr>
			   	<tr  class="text-center">
			        <td onclick="location.href='a02_request.jsp'"><%=request.getAttribute("request02")%>(확인하러가기)</td>
			   	</tr>
			   	<tr  class="text-center">
			        <td onclick="location.href='a04_session.jsp'"><%=session.getAttribute("session03")%>(확인하러가기)</td>
			   	</tr>
			   	<tr  class="text-center">
			        <td><%=application.getAttribute("application04")%></td>
			   	</tr>			   				   				   	
		 	</tbody>
		</table>      	
    </div>
</body>
</html>
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
# 다중 데이터 요청값 받기
1. 형식
	받을페이지?key1=값1&key1=값2&key1=값3
	1) 요청값 처리 객체
		String arry[]=request.getParameterValues("key1");
	2) 실무유형
		- 구매한 물건을 여러개 등록하는 경우
		- 구매한 갯수를 여러개 등록하는 경우
		- 좋아하는 옵션을 여러개 등록할때, check된 것만 등록하는 경우
		
# 여러 유형 데이터 받기 정리
1. default 문자열 받기
2. 숫자형(정수형/실수형)
3. boolean형 받기
 --%>

  <h2>구매한 과일</h2>
 <% 
 // 페이지?fruits=사과&fruits=바나나&fruits=딸기
 	String fruits[] = request.getParameterValues("fruits");
 	if(fruits!=null){
	 	for(String fruit: fruits){
	 		out.print("<h2>"+fruit+"<h2>");
	 	}
 	}
 %>
 <!--연습문제. 가입할 회원의 id를 반복문을 통해 출력하세요.  -->
  <h2>가입한 회원ID</h2>
 <%
 //페이지?id=a1234&id=b1234&id=b1234
 	int memNum = 1000;
 	String mem [] = request.getParameterValues("id"); 
 	if(mem!=null){
	 	for(int idx=0;idx<mem.length;idx++){
	 		out.print("<h3>"+memNum+" "+mem[idx]+"</h3>");
	 		memNum++;
	 	}
 	}
 %>
 <h2>구매한 물건들의 가격과 총계</h2>
 <%
 // ?price=3000&price=2000&price=1000
 	String pricesS [] = request.getParameterValues("price");
 	int tot =0;
 	if(pricesS!=null){
 		for(int idx=0;idx<pricesS.length;idx++){
 			int price = Integer.parseInt(pricesS[idx]);
 			out.print("<h3>"+(idx+1)+") "+price+"</h3>");
 			tot +=price;
 		}
 	}
 %>
 	<h4>총계: <%=tot %></h4>
 

 
 
 
 
 
 
 
</body>
</html>
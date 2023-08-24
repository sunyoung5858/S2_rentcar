<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="backWeb2.z01_vo.Person"    
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <title>Insert title here</title>
</head>
<!-- 
# 조별 토론 및 실습과제
1. 조별로 el 태를 활용한 session scope범위와 실제 코드에 대하여 알고 있는지 확인
   ajax를 처리하기 위해 필요한 기본 형식과 기본 데이터와 json데이터 가져오는 처리형식을 아는지 확인 
   : el태그 
   	- scope에 의해 설정된 데이터를 가져올 때, 기본의 getAttribute()로 가져오거나, 요청값을 처리할 때, 
		화면단에서 처리해야 하는 데이터를 간편하게 ${@@}형식으로 처리할 수 있게 하였다.
	- session.setAttribute("age", 25);과 같이 session scope로 setAttribute를 설정하면,
		다른 페이지에서도 해당 값을 불러올 수 있다.
   : ajax를 처리하기 위한 기본 형식
   		XMLHttpRequest 내장객체를 사용해서 ajax를 사용하기 위한 객체를 생성한 후에 사용한다.
   		xhr.open("get/post방식","서버의자원", 동기/비동기 여부 bool)
   		xhr.send()
   		xhr.responseText까지 해서 문자열 형식으로 가져오거나 
   		JSON.parse(data) 해당 문자열을 이와 같은 json객체로 변환해주는 메서드를 사용해서 json형식으로 사용하기도 한다.
   		obj.name // key값으로 불러오면 value값이 도출된다.
   		
2. el 태그를 이용하여 4가지 session scope의 범위를 기본 변수로 설정하여 호출해보자.
3. el을 이용하여 클래스 Person을 객체로 session scope로 설정하고 호출해 보자.
4. el을 이용하여 form으로 물품명과 가격과 갯수을 입력해서 해당 내용을 출력처리하자.
5. ajax처리 순서를 기술하고, 서버에 선언된 데이터(하나데이터,배열데이터, json 데이터)를 동기적으로 가져오는 처리를 하여 화면에 할당하세요.

 -->
 <%
	//pageContext.setAttribute("page", 1);
	//request.setAttribute("request", 2);
	//session.setAttribute("session", 3);
	//application.setAttribute("application",4);
	session.setAttribute("p01", new Person("홍길동",25,"서울"));
%>
<body>

<!-- 2번
	<h2>el태그 호출</h2>
	<h3>${page}</h3>
	<h3>${request}</h3>
	<h3>${session}</h3>
	<h3>${application}</h3>
-->
<!-- 3번 -->
	<h2>객체 el태그 호출</h2>
	<h3>${p01.name}</h3>
	<h3>${p01.age}</h3>
	<h3>${p01.loc}</h3>
	
    <div class="container mt-3">
       <h2>사원정보 등록</h2>
       <form action="/">
            <div class="mb-3 mt-3">
            <label for="empno">사원번호:</label>
            <input type="number" class="form-control" 
              id="empno" placeholder="사원명 입력" name="empno">
            </div>
            <button type="submit" class="btn btn-primary">등록</button>
        </form>
       <table class="table">
          <thead class="table-success">
               <tr>
                 <th>Firstname</th>
                 <th>Lastname</th>
                 <th>Email</th>
               </tr>
          </thead>
          <tbody>
               <tr>
                 <td>John</td>
                 <td>Doe</td>
                 <td>john@example.com</td>
               </tr>
          </tbody>
        </table>         
     </div>
</body>
</html>
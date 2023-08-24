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
<body>

    <div class="container mt-3">
    <h2>회원 등록</h2>
    <form action="0619_result.jsp">  
         <div class="mb-3 mt-3">
            <label for="id">아이디:</label>
            <input type="text" class="form-control" 
              id="id" placeholder="아이디를 입력해주세요." name="id">
         </div>
         <div class="mb-3 mt-3">
            <label for="pass">비밀번호:</label>
            <input type="text" class="form-control" 
              id="pass" placeholder="비밀번호를 입력해주세요." name="pass">
         </div>
           <div class="mb-3 mt-3">
            <label for="name">회원명:</label>
            <input type="text" class="form-control" 
              id="name" placeholder="성함을 입력해주세요." name="name">
         </div>
         </div>
        <%
	    String[] auth={"일반사용자","관리자"};
	    %>
	     <div class="mb-3 mt-3">
	      <label for="auth">권한:</label>
	      <label class="form-check-label">
	      	<%for(String auths:auth){ %>
	        <input class="form-check-input" 
	        	type="radio" name="auth" 
	        	value="<%=auths%>"> <%=auths%>
	        <%} %>	 
	      </label>
	       <div class="mb-3 mt-3">
            <label for="date">생년월일:</label>
            <input type="date" class="form-control" placeholder="입사일 선택" id="date" name="date">
         </div>
	    </div>       
         <button type="submit" class="btn btn-primary">등록</button>
     </form>
  </div>
	

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="container mt-3">
		<h2>사원정보 등록</h2>
		<form action="" onSubmit="return ckVal()" method="post">
			<div class="mb-3 mt-3">
				<label for="auth">권한:</label> 
				<select class="form-control" id="auth" name="auth" 
					onchange="document.querySelector('form').submit();" required>
					<option value="">= 권한선택 =</option>
					<option value="manager">관리자</option>
					<option value="normal">일반</option>
				</select>
			</div>
		</form>
	</div>
	<%
     	String auth = request.getParameter("auth");
     	if(auth!=null){
     		if(auth.equals("관리자")){
     	%>
     			<jsp:forward page="a10_admin.jsp"/>
     	<%  }else{%>
     		
     			<jsp:forward page="a11_user.jsp"/>
     	<%	}
     	
     	}%>


</body>
</html>
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
<%--
    	//     회원등록
    	//     id:[   ][등록된여부] ==> 
    	//     jsp : 요청값으로 himan 
    	//     js : 등록여부에 따라 등록된 회원 있습니다.
    	//          등록가능합니다.
 --%>
 	<%
 	String id = request.getParameter("id");
 	if(id==null) id = "";
 	String isReg = "";
 	// 초기화면/등록여부확인 구분
 	if(id.equals("himan")){
 		isReg = "Y";
 	}else if(id.equals("")){ // 초기화면..
 		isReg = "I";
 	}else{
 		isReg = "N";
 	}
 	%>
 	<script type="text/javascript">

 	</script>
    <div class="container mt-3">
    	<h2>회원 등록</h2>
    	<form method="post">
         	<div class="mb-3 mt-3">
            <label for="id">아이디:</label>
            <input type="text" class="form-control" 
      	     id="id" placeholder="아이디 입력" name="id">
         	</div>
         	<button type="button" 
         			id="btn01" class="btn btn-success">등록여부확인</button>
         	<div class="mb-3 mt-3">
            <label for="ename">사원명:</label>
            <input type="text" class="form-control" 
      	     id="ename" placeholder="사원명 입력" name="ename">
         	</div>
         	<button type="submit" class="btn btn-primary">등록</button>
     	</form>
		<script type="text/javascript">
			var btnObj = document.querySelector("#btn01");
	 		var isReg = "<%=isReg%>";
	 		if(isReg=='Y'){
	 			alert("등록된 아이디가 있습니다.")
	 		}
	 		if(isReg=='N'){
	 			alert("등록가능한 아이디 입니다.")
	 			document.querySelector("#id").value="<%=id%>";
	 			// id에 대한 유효성이 완료될 때, 회원정보 등록이
	 			// 가능하게 할 때, 꼭 필요..
	 			console.log("# 등록 유효성 check#")
	 			console.log(btnObj)
	 			console.log(btnObj.value)
	 			btnObj.innerText="유효성 확인완료";
	 			// log("문자열 타입") : jsp단에서 서버에 log에 나올 출력 처리
				
	 		}		
			/*
				# 버튼으로 submit 처리하는 방법
				<button type="button" id="btn01">
			*/
			
			btnObj.onclick=function(){
				// 코드로 전송 처리..
				// 전송 전에 유효성 처리 가능/로직처리 가능
				document.querySelector("form").submit();
			}
		</script>   	
    </div>
</body>
</html>
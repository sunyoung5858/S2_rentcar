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
 <%--
  # 요청값을 전달해서 서버단에 데이터를 처리 후,
  	front 프로그램에 넘겨서, front에 나타나는 내용을 처리..
  	1. id/pass 입력 ==> 서버단에서 인증 확인 ==> 인증되면 로그인 성공/특정 페이지 이동 (프런트단 전달)
  											미인증시 로그인 실패/다시 로그인 페이지로 (프런트단 전달)
  	
  --%>   
  <%
	  String id = request.getParameter("id");
	  if(id==null) id = "";
	  String pass= request.getParameter("pass");
	  if(pass==null) pass= "";
	  
	  String isValid = ""; // 초기값
	  if(id.equals("") && pass.equals("")){
		  isValid = "I"; // 입력 안했을 때
		//인증
	  } else if(id.equals("himan")&&pass.equals("7777")){
		  isValid = "Y";
	  	// 인증
	  }else{
		  isValid = "N";
	  }
  %>
  <script type="text/javascript">
  	var isValid = "<%=isValid%>"
  	if(isValid=='Y'){
  		alert("로그인 성공\n메인페이지로 이동")
  		//location.href = "main.jsp"
  	}if(isValid=='N'){
  		alert("로그인 실패\n다시 로그인하세요.")
  		//location.href = "login.jsp"
  	}
  </script>
  
</head>
<body>
    <div class="container mt-3">
       <h2>로그인</h2>
       <form method="post">
            <div class="mb-3 mt-3">
            <label for="id">id입력:</label>
            <input type="text" class="form-control" 
              id="id" placeholder="아이디 입력" name="id">
            </div>
            <div class="mb-3 mt-3">
            <label for="pass">pass입력:</label>
            <input type="password" class="form-control" 
              id="pass" placeholder="패스워드 입력" name="pass">
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
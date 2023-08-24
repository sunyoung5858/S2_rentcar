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
	# action이 설정되지 않아 요청값을 현재 페이지로 전달하는 경우 처리
	1. 특정한 경우에는 현재 페이지를 다시 요청값과 함께 전달하여 
		데이터를 처리해야 하는 경우도 간간히 발생한다.
		- 물리적으로는 1개의 페이지이지만, 논리적으로는 2개의 페이지를 처리하는 것이다.
	2. 이 경우, 초기 화면과 요청값이 전달 되었을 때, 화면을 감안하여 요청데이터를 처리해야한다.
		- 조건을 처리하여, null 값이 발생하지 않게 하여야 한다.
		
 --%>
 <%
 	String ename = request.getParameter("ename");
 	String job = request.getParameter("job");
 	// ename, job이 입력이 없는 초기화면에도 에러 없이 처리할 수 있게 처리..
 	if(ename==null) ename="";
 	if(job==null) job="";
 	
 	//숫자형 데이터는 default 0으로 설정해서 초기화 하도록 한다.

 %>
 <%--
 	화면에 검색한 입력값을 다시 다음 페이지에서 출력 필요.
 	value = "<%=ename%>"을 처리하여야 한다.
  --%>
    <div class="container mt-3">
       <h2>사원정보 조회</h2>
       <form method="post">
            <div class="mb-3 mt-3">
            <label for="ename">사원명:</label>
            <input type="text" class="form-control" 
              id="ename" placeholder="사원명 입력" name="ename" value=<%=ename %>>
            </div>
            <div class="mb-3 mt-3">
            <label for="job">직책:</label>
            <input type="text" class="form-control" 
              id="job" placeholder="직책 입력" name="job" value=<%=job %>>
            </div>
            <button type="submit" class="btn btn-primary">등록</button>
        </form>
       <table class="table">
          <thead class="table-success">
               <tr>
                 <th>사원명</th>
                 <th>직책</th>
               </tr>
          </thead>
          <tbody>
               <tr>
                 <td><%=ename %></td>
                 <td><%=job %></td>
               </tr>
          </tbody>
        </table>         
     </div>

</body>
</html>
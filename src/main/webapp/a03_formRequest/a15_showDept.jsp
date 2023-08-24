<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="backWeb2.z01_vo.Dept"    
%>
<!DOCTYPE html>
<%-- 
	1. 요청값 처리
	2. VO객체 확인/생성
	3. XXX.GETXXX() 출력.. 
--%>
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
    	<h2>등록 내역</h2>
		  <table class="table">
		    <thead class="table-success">
		      <tr>
		        <th>부서번호</th>
		        <th>부서명</th>
		        <th>직책명</th>
		      </tr>
		    </thead>
		    <%
		    String deptnoS = request.getParameter("deptno");
		    int deptno = 0;
		    if(deptnoS!=null) deptno = Integer.parseInt(deptnoS);
		    
		   	String dnameS = request.getParameter("dname");
		   	if(dnameS==null) dnameS="";
		   	
		   	String jobS = request.getParameter("job");
		   	if(jobS==null) jobS="";
	
		    Dept d = new Dept(deptno, dnameS, jobS);
		    
		    %>
		    <%-- 
		    1. 요청값 ==> 객체변환
		    	어디에 필요할까?
		    2. 숫자형 요청값
		    	1) 정수형
		    		기본데이터 선언 = 0;
		    		문자열 요청 변수 선언, 요청값 처리
		    		문자열 요청 변수 NULL 아닐 때 형변환 처리.
		    	2) 실수형
		    3. 문자열
		    	NULL을 ""으로 처리
		    4. 객체 TYPE에 맞는 생성자 선언. (TYPE과 갯수 확인)
		     --%>
		    <tbody>
		      <tr>
		        <td><%=d.getDeptno() %></td>
		        <td><%=d.getDname() %></td>
		        <td><%=d.getJob() %></td>  
		      </tr>    
		    </tbody>
		  </table>


     </div>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="backWeb2.z01_vo.Emp"    
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
<body>
    <div class="container mt-3">
    	<h2>등록 내역</h2>
		  <table class="table">
		    <thead class="table-success">
		      <tr>
		        <th>사원번호</th>
		        <th>사원명</th>
		        <th>직책번호</th>
		        <th>관리자번호</th>
		        <th>입사일(문자열)</th>
		        <th>급여</th>
		        <th>보너스</th>
		        <th>부서번호</th>
		      </tr>
		    </thead>
		    <%
		    String empnoS = request.getParameter("empno");
		    int empno = 0;
		    if(empnoS!=null) empno = Integer.parseInt(empnoS);
		    
		   	String ename = request.getParameter("ename");
		   	if(ename==null) ename="";
		   	
		   	String job = request.getParameter("job");
		   	if(job==null) job="";
		   	
		   	String mgrS = request.getParameter("mgr");
		    int mgr = 0;
		   	if(mgrS==null) mgr=Integer.parseInt(mgrS);
		    
		   	String hiredate = request.getParameter("hiredateS");
		   	if(hiredate==null) hiredate="";
		   	
		   	String salS = request.getParameter("sal");
		    double sal = 0;
		   	if(salS==null) sal = Double.parseDouble(salS);
		   	
			String commS = request.getParameter("comm");
		    double comm = 0;
		   	if(commS==null) comm = Double.parseDouble(commS);
		   	
		   	String deptnoS = request.getParameter("deptno");
		    int deptno = 0;
		   	if(deptnoS==null) mgr=Integer.parseInt(deptnoS);
		   	
		   	// 숫자(정수형/실수형)
		 	// 문자열
		 	// VO객체에 만들어서 처리하면, 후에 DB연동이나 필요에 따라 처리를 효과적으로 할 수 있다.
		 	// 1. 생성자에 TYPE에 맞는 순서를 지정한다.
		    Emp e = new Emp(empno, ename, job, mgr, hiredate, sal, comm, deptno);
		    
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
		        <td><%=e.getDeptno() %></td>
		        <td><%=e.getEname() %></td>
		        <td><%=e.getJob() %></td>
		        <td><%=e.getMgr() %></td>
		        <td><%=e.getHiredateS() %></td>
		        <td><%=e.getSal() %></td>
		        <td><%=e.getComm() %></td>
		        <td><%=e.getDeptno() %></td>
		      </tr>
		      
		    </tbody>
		  </table>


     </div>
</body>
</html>
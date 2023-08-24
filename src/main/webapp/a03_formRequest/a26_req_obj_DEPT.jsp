<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="backWeb2.z01_vo.Dept"
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
<%--
	부서정보를 입력받아서 처리하여 VO객체에 할당하고,
	getxxx()를 로그로 출력하세요.
	Dept(int deptno, String dname, String job)
--%>
<%
	String deptnoS = request.getParameter("deptno");	
	String dnameS = request.getParameter("dname");	
	String jobS = request.getParameter("job");	
	Dept d = new Dept(0,"","");
	if(deptnoS!=null) {
		int deptno=Integer.parseInt(deptnoS);
		d = new Dept(deptno,dnameS,jobS);
		log("# 부서정보 입력 완료");
		log(""+d.getDeptno());
		log(d.getDname());
		log(d.getJob());
	}
	
%>
    <div class="container mt-3">
       <h2>부서 정보 등록</h2>
       <form method="post">
            <div class="mb-3 mt-3">
            <label for="deptno">부서번호:</label>
            <input type="number" class="form-control" 
              id="deptno" placeholder="부서명 입력" name="deptno">
            </div>
            <div class="mb-3 mt-3">
            <label for="dname">부서명:</label>
            <input type="text" class="form-control" 
              id="dname" placeholder="부서이름 입력" name="dname">
            </div>
            <div class="mb-3 mt-3">
            <label for="job">직책:</label>
            <input type="text" class="form-control" 
              id="job" placeholder="직책 입력" name="job">
            </div>
            <button type="submit" class="btn btn-primary">등록</button>
        </form>
        
          <table class="table">
          <thead class="table-success">
               <tr>
                 <th>부서번호</th>
                 <th>부서명</th>
                 <th>직책</th>
               </tr>
          </thead>
          <tbody>
               <tr>
                 <td><%=deptnoS %></td>
                 <td><%=dnameS %></td>
                 <td><%=jobS %></td>
               </tr>
          </tbody>
     </div>
</body>
</html>
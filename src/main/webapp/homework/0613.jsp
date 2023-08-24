<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="backWeb2.z01_vo.Job"
    import="backWeb.a01_dao.JobDao"
    import="java.util.List"
    %>
<%
	JobDao dao = new JobDao();
	List<Job> jlist = dao.getJobList();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%--1. 직책정보를 jsp에서 Combo 박스로 출력하세요(- jobs 테이블 참고, DAO,JSP처리) --%>
	<h2>관리자 콤보</h2>
	관리자명:<select name="job" onchange="alert(this.value)">
			<option value=''>직책을 선택하세요</option>
			<%for(Job job:jlist){ %>
			<option value='<%=job.getJob_id()%>'>
				<%=job.getJob_title()%>
				(<%=job.getMin_salary() %> ~
				<%=job.getMax_salary() %>)</option>
			<%}%>
	   </select>
<%--2. 웹화면에서 main.jsp을 두고, 상단페이지(top.jsp), 하단페이지(bottom.jsp)
             를 include지시자로 두어 처리하되, java, js, css 코드를 top.jsp에 선언하여
             main.jsp, bottom.jsp에서 호출하는 것을 처리해보세요.--%>
<%--3. 쿼리스트링으로 회원정보(아이디,패스워드,이름,권한,포인트)를 전송하고 이것을 출력하세요--%>
<h2>회원정보</h2>
 	 <form>
 	 	아이디: <input type="text" name = "id"  value=""/>
 	 	패스워드: <input type="text" name = "pass"  value=""/>
 	 	이름: <input type="text" name = "name"  value=""/>
 	 	권한: <input type="text" name = "auth"  value=""/>
		포인트: <input type="text" name = "point"  value=""/>
 	 	<input type="submit" value="전송하기"/>
 	 </form><br>
 	 <%
 	 	String idS = request.getParameter("id");
 	 	String passS = request.getParameter("pass");
 	 	String nameS = request.getParameter("name");
 	 	String authS = request.getParameter("auth");
 	 	String pointS = request.getParameter("point");
 	 %>
 	 <hr>
 	 <h2>회원정보 확인</h2>
 	 <h3>아이디 : <%=idS %></h3>
 	 <h3>패스워드 : <%=passS %></h3>
 	 <h3>이름 : <%=nameS %></h3>
 	 <h3>권한 : <%=authS %></h3>
 	 <h3>포인트 : <%=pointS %></h3><br>
<%--4. 쿼리스트링으로 선수의정보(이름, 타석,안타)를 통해서 타석과 안타를 형변환하여 이름,타율을 출력하세요--%>
<h2>선수 정보 입력</h2>
 	 <form>
 	 	이름: <input type="text" name = "palyer"  value=""/>
 	 	타석: <input type="text" name = "hits"  value=""/>
 	 	안타: <input type="text" name = "bats"  value=""/>
 	 	<input type="submit" value="입력하기"/>
 	 </form><br>
 	 //'타율 = 안타/타수'
 	 <%
 	 	String palyerS = request.getParameter("palyer");
 	 	String hitsS = request.getParameter("hits");
 	 	String batsS = request.getParameter("bats");
 		int hits = 1;
 		if(hitsS!=null){
 			hits = Integer.parseInt(hitsS);
 		}
 		int bats = 1;
 		if(batsS!=null){
 			bats = Integer.parseInt(batsS);
 		}
 		double result = (int)(bats/hits);
 	 %>
 	 <br>
 	 <h2>타율 확인</h2>
 	 <h3>선수 : <%=palyerS %></h3>
 	 <h3>타석 : <%=hits %>원</h3>
 	 <h3>안타 : <%=bats %>개</h3>
 	 <h3>타율 : <%=result %>원</h3>
</body>
</html>
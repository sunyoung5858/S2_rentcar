<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"
    import="backWeb2.z01_vo.Member"
    import="backWeb2.z01_vo.Manager"
    import="backWeb.a01_dao.A05_MemberDao"
    import="backWeb.a01_dao.A04_PreparedDao2"
    import="java.util.List"
    %>
<%
	A04_PreparedDao2 dao2 = new A04_PreparedDao2();
	List<Manager> mlist = dao2.getManager();

	A05_MemberDao dao = new A05_MemberDao();
 
	Member m = dao.login("himan", "7777");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>로그인한 정보</h2>
	<h3>아이디: <%=m.getId() %></h3>
	<h3>이름: <%=m.getName() %></h3>
	<h3>권한: <%=m.getAuth() %></h3>
	
<%--
	# dao를 불러와서 처리되는 내용
	1. 전체 조회
	2. 특정 단일 데이터 상세 확인(등록/수정/삭제)
	3. combo형태의 데이터 처리(*)
		select
		checkbox
		radio 
	# 관리자 정보를 select에 가져와서 검색할 때,
	관리자:[select   ] 검색
	1. 관리자 combox 처리 화면 UI 만들기
		관리자:[전체선택]
			  홍길동(부서명) ==> 1000
			  김길동(부서명) ==> 1002
			  신길동(부서명) ==> 1003
	2. sql 작성
	3. VO 작성 
		사원번호/ 부서명/ 관리자명 
	4. Dao 메서드 추가 
		Public List<Vo> getManager()
	5. jsp
		import vo/dao
		객체 생성
		화면에 forEach문 처리..
 --%>
 	<h2>관리자 콤보</h2>
 	관리자명:<select name="mgr" onchange="alert(this.value)">
 				<option value='0'>선택하세요!!</option>
 				<%for(Manager mgr:mlist){ %>
 				
 				<option value='<%=mgr.getEmpno()%>'>
 					<%=mgr.getEname()%>(<%=mgr.getDname() %>)</option>
 				<%}%>
 		   </select>
 <%--
 sql작성 :
	SELECT EMPNO, ENAME, DNAME 
	FROM EMP E, DEPT D
	WHERE E.DEPTNO = D.DEPTNO 
	AND EMPNO IN (
		SELECT DISTINCT MGR FROM EMP
	) 
--%>
<%-- VO작성: backWeb2.z01_vo.Manager  --%>
<%-- Dao 메서드 추가 : --%>
 
 
 
 
 
 
 
 
 
 
 
</body>
</html>
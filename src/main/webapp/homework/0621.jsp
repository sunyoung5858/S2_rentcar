<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="backWeb.a01_dao.A05_MemberDao"
    
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
<!-- 2번. member테이블을 기준으로 id가 있는지 여부를 확인하는 DB 처리를 해보세요
         회원아이디:[   ][등록여부확인] ==> dao (boolean getMember(String id)) 
         ==> 등록여부에 따라 alert() 출력
// 로그인 중복체크 
	public boolean idCheck(String id) {
		boolean result = false;
		Member mem = null;
		String sql = "SELECT * FROM member02\r\n"
				+ "WHERE id=?";
		//1. 연결(기본예외/자원해제)
		try {
			con = DB.con();
			// 2. 대화(sql 전달 후, 매개변수로 전달)
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			// 3. 결과
			rs = pstmt.executeQuery();
			// 4. (ResultSet ==> VO) ? 단일/여러개 if/while	
			if(rs.next()) {
				result= true;
			
			}else {
				result=false;
			}
			// 
			rs.close();
	        pstmt.close();
	        con.close();

		} catch (SQLException e) {
			System.out.println("DB:"+e.getMessage());
		}catch(Exception e) {
			System.out.println("기타:"+e.getMessage());
		}finally {
			DB.close(rs, pstmt, con);
		}
		return result;
	}
 -->
<%
	String id = request.getParameter("id");
	A05_MemberDao dao = new A05_MemberDao();
	boolean isIdCheck = dao.idCheck(id);
%>
<script type="text/javascript">
	function isIdCheck(){
		if(<%=isIdCheck%>==true){
			alert("이미 사용중인 아이디입니다.")
		}
		if(<%=isIdCheck%>==false){
			alert("사용 가능한 아이디입니다.")
		}
	}
</script>
    <div class="container mt-3">
       <h2>ID 중복체크</h2>
       <form method="post">
            <div class="mb-3 mt-3">
            <label for="id">아이디:</label>
            <input type="text" class="form-control" 
              id="id" placeholder="아이디 입력" name="id">
            </div>
            <button type="submit" class="btn btn-primary" onclick="isIdCheck()">
            		아이디 중복체크</button>
        </form>
        <br>   
<%--
 3번.
 [1단계:코드] 3. session 범위로 num01을 할당하고, 
 	a01_sess.jsp <==> a02_sess.jsp 이동 시마다 증가하게 하세요.
 --%>
       
<%
	int num01 = 0;
 	session.setAttribute("session", num01);
%>     
 <h2 style="color:red" onclick="location.href='a02_sess.jsp'">
 	여기를 클릭해서 이동하세요. 시작번호<%= session.getAttribute("session")%></h2>
<!-- 
a02_sess.jsp
	<body>
		<%
			int result = (int)(session.getAttribute("session"));
			result += 1;
		%>
		    <h2 style="color:red">
		 		결과 : <%= result%></h2>
	</body>
 --> 
       
</body>
</html>
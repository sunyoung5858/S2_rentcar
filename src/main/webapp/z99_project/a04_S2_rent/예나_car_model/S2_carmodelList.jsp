<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "frontWeb.z99_project.a03_rent.*"
	import = "frontWeb.z99_project.vo.*"
	import = "java.util.*"
    %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Favicon-->
	<link rel="icon" type="../images/x-icon" href="assets/favicon.ico" />
	<!-- Core theme CSS (includes Bootstrap)-->
	<link href="../css/admin/styles.css" rel="stylesheet" />
	<link href="../css/admin/Reservation_inquiry.css" rel="stylesheet" type="text/css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../js/scripts.js"></script>
    
    <title>Insert title here</title>
</head>
<jsp:useBean id="mDao" class="frontWeb.z99_project.a03_rent.A01_S2ModelDao" scope="application"/>

<body>
<%
   String getUserId = (String)session.getAttribute("id");
   String getUserAuth = (String)session.getAttribute("auth");
   if(getUserId==null){ 
%>
   	<script>
      	alert('로그인이 필요한 접근입니다.')
      	location.href = "../지우_login_joinmembership/S2_Login.jsp"
   	</script>
<%
   }else if(session.getAttribute("auth").equals("USER")){
%>
   	<script>
   		alert('관리자 계정으로 로그인해주세요.')
   		location.href = "../지우_login_joinmembership/S2_Login.jsp"
   	</script>
<% 
   }else if(session.getAttribute("auth").equals("관리자")){
%>
<%       
   }else{
%>
   	<script>
   		alert('비정상적인 접근입니다.')
   		location.href = "../지우_login_joinmembership/S2_Login.jsp"
   	</script>
<% }%>
	<div class="d-flex" id="wrapper">
		<!-- 사이드바 -->
		<jsp:include page="../sidebar.jsp"/> 
        <!-- Page content-->
            <div class="container-fluid">
	      		<div>
	      		  <!-- 경로확인 -->
	               <div class="loc">
	                   <div class="locCon">차량모델관리<img class="locImg" src="../images/icon_next.png" alt="">모델리스트</div>
	            	</div>
	               <h3 class="top-loc">차량 모델 리스트</h3>
	<div class="main-box">
      <div class="list-table">
      <table class="table table-striped table-hover">
         <thead class="table-success">
               <tr  class="text-center">
                <th>모델명</th>
                <th>제조사</th>
                <th>차종</th>
                <th>대여금액</th>
                <th>변경</th>
               </tr>
          </thead>
          <tbody>
          <%
				ArrayList<Model> mod = mDao.getAllModel();
				for(int i=0; i<mod.size(); i++){
					Model m = mod.get(i);
		  %>
               <tr  class="text-center">
                 <td name="model"><%=m.getModel()%></td>
                 <td><%=m.getBrand()%></td>
                 <td><%=m.getKind()%></td>
                 <td><%=m.getExpense()%></td>
                 <td>
                 <button type="button" class="btn btn-primary"
                 onclick="location.href='S2_carmodelModify.jsp?model=<%=m.getModel()%>'">
                 수정</button>
                 <button id="delbutton" type="button" class="btn btn-danger"
                 onclick="deleteM('<%=m.getModel()%>')">
                 삭제</button>
               </tr>
          <%} %>
          </tbody>
      </table>    
      </div>
      <button type="button" class="btn btn-outline-primary"
      onclick="location.href='S2_carmodelForm.jsp'">
		차량모델 추가하기
		</button>      
    </div>
    <script>
    function deleteM(mod){
    	if(confirm("정말 삭제하시겠습니까?")){
    		location.href='S2_carmodelDelete.jsp?model='+mod
    	}else{
    	}
    }
    </script>
            <!-- Bootstrap core JS-->

</html>
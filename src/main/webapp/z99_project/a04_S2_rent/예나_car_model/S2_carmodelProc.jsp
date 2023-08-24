<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="icon" type="../images/x-icon" href="assets/favicon.ico" />
	<!-- Core theme CSS (includes Bootstrap)-->
	<link href="../css/admin/styles.css" rel="stylesheet" />
	<link href="../css/admin/Reservation_inquiry.css" rel="stylesheet" type="text/css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../js/scripts.js"></script>
   
    <title>Insert title here</title>
</head>
<%
 request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="mVo" class="frontWeb.z99_project.vo.Model">
	<jsp:setProperty name="mVo" property="*"/>
</jsp:useBean>
<jsp:useBean id="mDao" class="frontWeb.z99_project.a03_rent.A01_S2ModelDao" scope="application"/>
<%mDao.insertModel(mVo); %>
<body>
<div class="d-flex" id="wrapper">
		<!-- 사이드바 -->
		<jsp:include page="../sidebar.jsp"/> 
        <!-- Page content-->
            <div class="container-fluid">
	      		<div>
	      		  <!-- 경로확인 -->
	               <div class="loc">
	                   <div class="locCon">차량모델관리<img class="locImg" src="../images/icon_next.png" alt="">수정확인</div>
	            	</div>
	               <h3 class="top-loc">모델정보 수정 확인</h3>
	<div class="main-box">
      <table class="table table-striped table-hover">
      		<tr  class="text-center">
            <th>모델명</th><td><%=mVo.getModel()%></td>
            </tr>
            <tr  class="text-center">
            <th>제조사</th><td><%=mVo.getBrand()%></td>
            </tr>
            <tr  class="text-center">
            <th>차종</th><td><%=mVo.getKind()%></td>
            </tr>
            <tr  class="text-center">
            <th>가격</th><td><%=mVo.getExpense()%></td>
            </tr>
               
      </table>    
      <button type="button" class="btn btn-outline-primary"
      onclick="location.href='S2_carmodelList.jsp'">
      전체 모델 목록 보기
      </button>
    </div>
    </div>
    </div>
    </div>
</body>
</html>
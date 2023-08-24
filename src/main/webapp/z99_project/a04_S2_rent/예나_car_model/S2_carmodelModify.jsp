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
    	<link rel="icon" type="../images/x-icon" href="assets/favicon.ico" />
	<!-- Core theme CSS (includes Bootstrap)-->
	<link href="../css/admin/styles.css" rel="stylesheet" />
	<link href="../css/admin/Reservation_inquiry.css" rel="stylesheet" type="text/css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../js/scripts.js"></script>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <title>Insert title here</title>
</head>
<body>
<jsp:useBean id="mDao" class="frontWeb.z99_project.a03_rent.A01_S2ModelDao" scope="application"/>
<% 

	String mod = request.getParameter("model");
	Model m = mDao.getOneModel(mod); 
%>
        <div class="d-flex" id="wrapper">
		<!-- 사이드바 -->
		<jsp:include page="../sidebar.jsp"/> 
        <!-- Page content-->
            <div class="container-fluid">
	      		<div>
	      		  <!-- 경로확인 -->
	               <div class="loc">
	                   <div class="locCon">차량모델관리<img class="locImg" src="../images/icon_next.png" alt="">차량모델수정</div>
	            	</div>
	               <h3 class="top-loc">모델정보 수정</h3>
	<div class="main-box">
       <form action="S2_carmodelModifyProc.jsp" method="post">
            <div class="mb-3 mt-3">
            <label for="model">모델명:</label>
            <input type="text" class="form-control" 
            	value="<%=m.getModel()%>"
              id="model" placeholder="모델명 입력" name="model">
            </div>
            <div class="mb-3 mt-3">
            <label for="brand">제조사:</label>
            <input type="text" class="form-control" 
            	value="<%=m.getBrand()%>"
              id="brand" placeholder="제조사 입력" name="brand">
            </div>
            <div class="mb-3 mt-3">
            <label for="kind">차종:</label><br>
            <input type="text" class="form-control" 
            	value="<%=m.getKind()%>"
              id="kind" placeholder="차종 입력" name="kind">
            </div>
            <div class="mb-3 mt-3">
            <label for="expense">대여금액:</label>
            <input type="number" class="form-control" 
            	value="<%=m.getExpense()%>"
              id="expense" placeholder="대여금액 입력" name="expense">
            </div>
            <input type="hidden" value="<%=m.getModel()%>" name="model"/>
            <button type="submit" class="btn btn-primary">수정 등록</button>
        </form>  
    </div>
    </div>
    </div>
    </div>
</body>
</html>
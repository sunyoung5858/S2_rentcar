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
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Favicon-->
<link rel="icon" type="../images/x-icon" href="assets/favicon.ico" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="../css/admin/styles.css" rel="stylesheet" />
<link href="../css/admin/Reservation_inquiry.css" rel="stylesheet" type="text/css">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
</script>
<div class="d-flex" id="wrapper">
		<!-- 사이드바 -->
		<jsp:include page="../sidebar.jsp"/> 
        <!-- Page content-->
            <div class="container-fluid">
	      		<div>
	      		  <!-- 경로확인 -->
	               <div class="loc">
	                   <div class="locCon">회원관리<img class="locImg" src="../images/icon_next.png" alt="">쿠폰발급</div>
	            	</div>
	               <h3 class="top-loc">쿠폰발급</h3>
					<!-- 본문 -->
					<div class="main-box">
					
					
						<!-- 폼 입력창 -->	
						 <div class="container mt-3">
					       <form action="/">
					            <div class="mb-3 mt-3">
					            <label for="empno">사원번호:</label>
					            <input type="number" class="form-control" 
					              id="empno" placeholder="사원명 입력" name="empno">
					            </div>
					            <button type="submit" class="btn btn-primary">등록</button>
					        </form>
					       <table class="table">
					          <thead class="table-success">
					               <tr>
					                 <th>Firstname</th>
					                 <th>Lastname</th>
					                 <th>Email</th>
					               </tr>
					          </thead>
					          <tbody>
					               <tr>
					                 <td>John</td>
					                 <td>Doe</td>
					                 <td>john@example.com</td>
					               </tr>
					          </tbody>
					        </table>         
					     </div>
		              
						<!-- 자바스크립트 -->
						<script>
							//유효성체크
							
						</script>
					</div>
				</div>
		    </div>
    </div>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="../js/scripts.js"></script>
            
	
	
	
	
	
		
</body>
</html>
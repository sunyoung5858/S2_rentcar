<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import = "frontWeb.z99_project.a03_rent.*"
	import = "frontWeb.z99_project.vo.*"
	import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- 상단 head에 Favicon-->
<link rel="icon" type="../images/x-icon" href="assets/favicon.ico" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="../css/admin/styles.css" rel="stylesheet" />
<link href="../css/admin/Reservation_inquiry.css" rel="stylesheet"
	type="text/css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="../js/scripts.js"></script>

</head>
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
	<%
	String carNumberS = request.getParameter("car_number");
	String distance_drivenS = request.getParameter("distance_driven");
	String car_plate = request.getParameter("car_plate");
	String storeS = request.getParameter("store");
	String model = request.getParameter("model");
	
	S2carDao dao = new S2carDao();

	String regYN = "F";

	int car_number = 0;
	int distance_driven = 0;
	int store = 0;
	if (carNumberS != null) {
		car_number = Integer.parseInt(carNumberS);
		distance_driven = Integer.parseInt(distance_drivenS);
		store = Integer.parseInt(storeS);

		S2Car s = new S2Car(car_number, distance_driven, car_plate, store, model);
		dao.insertS2car(s);
		regYN = "Y";
	}
	%>

	<script>
	var regYN = "<%=regYN%>
		"
		if (regYN == 'Y') {
			alert("등록 성공");
		}

		function checkValid() {
			return true;
		}
		function getSyn(page) {
			var xhr = new XMLHttpRequest();
			xhr.open("get", page, false);
			xhr.send()
			return xhr.responseText;
		}
		// 삭제 버튼
		function deleteCar() {
			// 삭제 버튼 누른 후 삭제 유무 질문
			var delY = confirm("삭제하시겠습니까?");
			if (delY == true) {
				alert("삭제완료")
			} else {
				alert("")
			}
			var sNum = document.querySelector("#car_number").innerText
			var page = "store_del.jsp?store=" + sNum;
			var result = getSyn(page)

			// 삭제 후 새로고침
			setTimeout(function() {
				location.reload();
			}, 1000);
		}
	</script>

	<div class="d-flex" id="wrapper">
		<!-- 사이드바 -->
		<jsp:include page="../sidebar.jsp" />
		<!-- Page content-->
		<div class="container-fluid">
			<div>
				<!-- 경로확인 -->
				<div class="loc">
					<div class="locCon">
						지점내 차량 관리<img class="locImg" src="../images/icon_next.png" alt="">지점내 차량조회
					</div>
				</div>
				<h3 class="top-loc">차량 조회</h3>
			</div>
			<div class="main-box">
				<div class="search-box">
					<table class="table table-striped table-hover">
						<thead class="table-success">
							<tr class="text-center">
								<th>차량관리번호</th>
								<th>주행거리</th>
								<th>번호판번호</th>
								<th>지점일련번호</th>
								<th>모델명</th>
								<th>관리</th>
								<th colspan="2"></th>
							</tr>
						</thead>
						<tbody>
							<%
							for (S2Car s : dao.s2clist()) {
							%>
							<tr class="text-center">
								<td id="car_number"><%=s.getCar_number()%></td>
								<td><%=s.getDistance_driven() + "km"%></td>
								<td><%=s.getCar_plate()%></td>
								<td><%=s.getStore()%></td>
								<td><%=s.getModel()%></td>
								<td colspan="2"><input type="button" value="수정"
									class="btn btn-primary"> <input type="button"
									value="삭제" onclick="deleteCar()" class="btn btn-danger"></td>
							</tr>
							<%
							}
							%>
						</tbody>
					</table>
					<div>
						<button type="button" class="btn btn-outline-primary"
							onclick="location.href='car_regi.jsp'">등록</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
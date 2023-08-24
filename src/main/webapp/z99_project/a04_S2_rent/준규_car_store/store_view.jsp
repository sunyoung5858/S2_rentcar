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
	String storeS = request.getParameter("store");
	String store_name = request.getParameter("store_name");
	String store_address = request.getParameter("store_address");
	String store_phone = request.getParameter("store_phone");

	S2storeDao dao = new S2storeDao();

	String regYN = "F";

	int store = 0;
	if (storeS != null) {
		store = Integer.parseInt(storeS);
		S2Store s = new S2Store(store, store_name, store_address, store_phone);
		dao.insertS2store(s);
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
		function deleteStore() {
			// 삭제 버튼 누른 후 삭제 유무 질문
			var delY = confirm("삭제하시겠습니까?");
			if (delY == true) {
				alert("삭제완료")
				var sNum = document.querySelector("#serialNum").value
				var page = "store_del.jsp?store=" + sNum;
				var result = getSyn(page)
			} else {
				alert("")
			}

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
						지점관리<img class="locImg" src="../images/icon_next.png" alt="">지점조회
					</div>
				</div>
				<h3 class="top-loc">지점조회</h3>
			</div>
			<div class="main-box">
				<div class="search-box">
					<table class="table table-striped table-hover">
						<thead class="table-success">
							<tr class="text-center">
								<th>지점일련번호</th>
								<th>지점명</th>
								<th>주소</th>
								<th>전화번호</th>
								<th colspan="2">관리</th>
							</tr>
						</thead>
						<tbody>
							<%
							for (S2Store s : dao.s2list()) {
							%>
							<tr class="text-center">
								<td id="serialNum"><%=s.getStore()%></td>
								<td><%=s.getStore_name()%></td>
								<td><%=s.getStore_address()%></td>
								<td><%=s.getStore_phone()%></td>
								<td colspan="2"><input type="button" value="수정"
									class="btn btn-primary"> <input type="button"
									value="삭제" class="btn btn-danger"
									onclick="location.href='store_del.jsp'"></td>
							</tr>
							<%
							}
							%>
						</tbody>
					</table>
					<button type="button" class="btn btn-outline-primary"
						onclick="location.href='store_regi.jsp'">등록</button>

				</div>
			</div>
		</div>
	</div>
</body>
</html>
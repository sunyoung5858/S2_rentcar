<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="S2_Rentcar.vo.S2_Reservation"
	import="S2_Rentcar.admin.S2_ReservationDao"
	import="java.util.ArrayList"
	import="java.util.*"
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
	function getSyn(page){
		var xhr = new XMLHttpRequest();
		xhr.open("get",page,false);
		//alert(page);
		xhr.send()
		return xhr.responseText;
	}   
	//전체조회버튼
	function allList(){
		var allListCode = getSyn("allList.jsp?")
		//alert(allListCode)
		var tbody= document.querySelector("#list");
		tbody.innerHTML = allListCode;
	}
	//선택조회버튼
	function searchList(){
		//alert("test")
		checkValid();
		var startdateS = document.querySelector("#startdate").value;
		//alert(startdateS)
		var enddateS = document.querySelector("#enddate").value;
		//alert(enddateS)
		var id = document.querySelector("#id").value;
		//alert(id)
		var name = document.querySelector("#name").value;
		//alert(id)
		var storename = document.querySelector("#storename").value;
		//alert(id)
		//?startdate=2023-06-08&enddate=2023-06-29&id=himan
		var query = "startdate="+startdateS+"&enddate="+enddateS+"&id="+id+"&name="+name+"&storename="+storename
		//alert(query)
		var searchListCode = getSyn("searchList.jsp?"+query)
		//alert(searchListCode);
		var tbody= document.querySelector("#list");
		tbody.innerHTML = searchListCode;
	}

</script>

	<div class="d-flex" id="wrapper">
		<!-- 사이드바 -->
		<jsp:include page="../sidebar.jsp"/> 
        <!-- Page content-->
            <div class="container-fluid">
	      		<div>
	      		  <!-- 경로확인 -->
	               <div class="loc">
	                   <div class="locCon">예약관리<img class="locImg" src="../images/icon_next.png" alt="">예약조회</div>
	            	</div>
	               <h3 class="top-loc">예약조회</h3>
					<!-- 본문 -->
					<div class="main-box">
						<!-- 검색창 -->	
						<div class="search-box">
						<form action="" method="post">
								<ul>
									<li>
										<span>예약기간</span>
										<label for="start-date">시작일:</label>
										<input type="date" id="startdate" name="startdate">
										<label for="enddate">종료일:</label>
										<input type="date" id="enddate" name="enddate">
									</li>
									<li>
										<span>검색항목</span>
										<label for="storename">지점명 :</label>
										<select id="storename" name="storename">
											<option value="">지점선택</option>
											<option id="storename" value="제주오토하우스1">제주오토하우스1</option>
											<option id="storename" value="제주오토하우스2">제주오토하우스2</option>
											<option id="storename" value="제주오토하우스3">제주오토하우스3</option>
										</select>
										<label for="id">아이디</label>
										<input name="id" type="text" id="id">
										<label for="name">예약자명</label>
										<input name="name" type="text" id="name">
									</li>
								</ul>                
								<button type="button" onclick="searchList()">조회</button>
							</form>
							
						</div>
						<!-- 검색된 리스트 -->
						<button type="button" onclick="allList()" style="margin-top:30px; background-color:lightgrey; color:black; border:none; border-radius:5px;padding:10px 20px;">전체보기</button>
						<div class="list-table">
							<table class="table table-striped table-hover">
								<thead class="table-success">
									<tr class="text-center">
									<th>예약번호</th>
									<th>id</th>
									<th>예약자명</th>
									<th>예약자전화번호</th>
									<th>대여일시</th>
									<th>반납일시</th>
									<th>지점</th>
									<th>차량관리번호</th>
									<th>관리</th>
									</tr>
								</thead>
								<tbody id="list">		
									<tr class="text-center">
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
								</tbody>						     
							</table>	        
						</div>  
		              
						<!-- 자바스크립트 -->
						<script>
							//submit 날짜 유효성체크
							function checkValid() {
								//alert("날짜체크")
							var startDateInput = document.getElementById('startdate');
							var endDateInput = document.getElementById('enddate');
						
							var startDate = new Date(startDateInput.value);
							var endDate = new Date(endDateInput.value);
									
							if (startDate > endDate) {
								alert("종료일은 시작일보다 이후여야 합니다.");
							} 
							}
						
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
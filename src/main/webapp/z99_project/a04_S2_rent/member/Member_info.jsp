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
		var id = document.querySelector("#id").value;
		var name = document.querySelector("#name").value;	
		var phone = document.querySelector("#phone").value;
		var query = "id="+id+"&name="+name+"&phone="+phone
		//alert(query)
		var searchListCode = getSyn("searchList.jsp?"+query)
		//alert(searchListCode);
		var tbody= document.querySelector("#list");
		tbody.innerHTML = searchListCode;
	}
	// 쿠폰발급
	function createCoupon(){
		if(confirm('쿠폰발급 페이지로 이동하시겠습니까?')){
			location.href='createCoupon.jsp'
		}
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
	                   <div class="locCon">회원관리<img class="locImg" src="../images/icon_next.png" alt="">회원조회</div>
	            	</div>
	               <h3 class="top-loc">회원조회</h3>
					<!-- 본문 -->
					<div class="main-box">
						<!-- 검색창 -->	
						<div class="search-box">
							<form action="" method="post">
								<ul>
									<li>
									</li>
									<li>
										<span>검색항목</span>			
										<label for="id">아이디</label>
										<input name="id" type="text" id="id">
										<label for="name">회원명</label>
										<input name="name" type="text" id="name">
										<label for="phone">휴대폰번호</label>
										<input name="phone" type="number" id="phone">
									</li>
								</ul>                
								<button type="button" onclick="searchList()">조회</button>
							</form>
						</div>
						<button type="button" onclick="allList()" style="margin-top:30px; background-color:lightgrey; color:black; border:none; border-radius:5px;padding:10px 20px;">전체보기</button>
						<button type="button" onclick="createCoupon()" style="margin-top:30px; font-weight:bold; background-color:#5f7d82; color:white; border:none; border-radius:5px;padding:10px 20px;">쿠폰발급</button>
						<!-- 검색된 리스트 -->
						<div class="list-table">
							<table class="table table-striped table-hover">
								<thead class="table-success">
									<tr class="text-center">
									<th>아이디</th>
									<th>회원명</th>
									<th>휴대폰번호</th>
									<th>이메일</th>
									<th>주소</th>
									<th>가입일</th>
									<th>보유포인트</th>
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
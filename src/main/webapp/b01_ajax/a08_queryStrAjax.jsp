<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <title>Insert title here</title>
	<script type="text/javascript">
		function getSyn(page){
			var xhr = new XMLHttpRequest();
			xhr.open("get",page,false);
			xhr.send()
			return xhr.responseText;
		}
		//ex) 선수명:[   ] 타석:[   ] 안타:[  ] [타율확인]
		//    z08_reqJson.jsp  
		//    {"player":"@@@"","seat":@@@,"hit":@@, "hRatio":@@}
		///// 테이블로 정보를 출력..선수명, 타석, 안타, 타율
		function ajaxCall(){
			var player = document.querySelector("#player").value
			var seat = document.querySelector("#seat").value
			var hit = document.querySelector("#hit").value
			var page = "z08_reqJson.jsp?player="+player
					+"&seat="+seat+"&hit="+hit
			var playerOb = JSON.parse(getSyn(page))
			var tds = document.querySelectorAll("tbody td")
			tds[0].innerText = playerOb.player
			tds[1].innerText = playerOb.seat
			tds[2].innerText = playerOb.hit
			tds[3].innerText = playerOb.hRatio
		}
	    // 12:05~
	
	</script>   
</head>
<body>
    <div class="container mt-3">
    	<h2>타율계산</h2>
    	<form action="" method="post">
         	<div class="mb-3 mt-3">
            <label for="ename">선수명:</label>
            <input type="text" class="form-control" 
      	     id="player" placeholder="선수명 입력" name="ename">
         	</div>    	
         	<div class="mb-3 mt-3">
            <label for="empno">타석:</label>
            <input type="number" class="form-control" 
      	     id="seat" placeholder="타석 입력" name="empno">
         	</div>
         	<div class="mb-3 mt-3">
            <label for="empno">안타:</label>
            <input type="number" class="form-control" 
      	     id="hit" placeholder="안타 입력" name="empno">
         	</div>
         	<%-- type="submit" 동기방식으로 화면전환으로 전송해버림.. --%>
         	<button type="button" onclick="ajaxCall()" class="btn btn-primary">타율계산</button>
     	</form>
		<table class="table table-striped table-hover">
			<thead class="table-success">
		      	<tr  class="text-center">
				    <th>선수</th>
				    <th>타석</th>
				    <th>안타</th>
				    <th>타율</th>
		      	</tr>
		    </thead>
		    <tbody>
			   	<tr  class="text-center">
			        <td>John</td>
			        <td>John</td>
			        <td>Doe</td>
			        <td>john@example.com</td>
			   	</tr>
		 	</tbody>
		</table>      	
    </div>
</body>
</html>
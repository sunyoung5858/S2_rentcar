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
    	function call(){
    		var xhr = new XMLHttpRequest()
    		xhr.open("get","z05_json2.jsp",false)
    		xhr.send()
    		var memObj = JSON.parse(xhr.responseText)
    		var tds = document.querySelectorAll("tbody td")
    		tds[0].innerText = memObj.id
    		tds[1].innerText = memObj.pass
    		tds[2].innerText = memObj.name
    		tds[3].innerText = memObj.auth
    		tds[4].innerText = memObj.point
    		
    	}
    </script>
</head>
<body>
    <div class="container mt-3">
    	<h2>json데이터 호출</h2>
    	<form action="" method="post">
         	<button onclick="call()" type="button" class="btn btn-primary">
         		회원정보 호출</button>
     	</form>
		<table class="table table-striped table-hover">
			<thead class="table-success">
		      	<tr  class="text-center">
				    <th>아이디</th>
				    <th>패스워드</th>
				    <th>이름</th>
				    <th>권한</th>
				    <th>포인트</th>
		      	</tr>
		    </thead>
		    <tbody>
			   	<tr  class="text-center">
			        <td>John</td>
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
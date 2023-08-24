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
</head>
<body>
	<%--
	
	id:[   ] [등록여부확인]
	 --%>
	<script>
		// form 하위에 있는 input은 
		// 기본적을 enter를 클릭 자동을 submit을 처리가 된다.
		// 이것을 방지하기 위해서 
		// event.preventDefault();
		// 기본적인 이벤트를 방지 처리하여야 한다.
		document.addEventListener('keydown',
		  function(event) {
			  if (event.keyCode === 13) {
			     event.preventDefault();
			  };
		  }, 
		  true);
		function ckIdKey(){
			
			if(event.keyCode==13){
				
				ckId()
			}
		}
		// 15:10~
		function ckId(){
			var idVal = document.querySelector("#id").value
			console.log(idVal)
			var xhr = new XMLHttpRequest();
			xhr.open("get","z03_data.jsp",false);
			xhr.send()
			var arry = xhr.responseText.split(",")
			var hasId = false;
			console.log(arry)
			arry.forEach(function(id){
				console.log(id)
				if(idVal == id){
					hasId = true;
				}
			})
			if(hasId){
				alert("등록된 id 있음")
			}else{
				alert("등록 가능")
			}
		}
	</script>
    <div class="container mt-3">
    	<h2>사원정보 등록</h2>
    	<form action="" method="post">
    	    
         	<div class="mb-3 mt-3">
            <label for="id">아이디:</label>
            <input type="text" class="form-control" 
      	     id="id" placeholder="아이디 입력" name="id"
      	     onkeyup="ckIdKey()"
      	    >
         	</div>
         	<button type="button" onclick="ckId()" class="btn btn-success">
         		등록여부확인</button>
         	<div class="mb-3 mt-3">
            <label for="ename">사원명:</label>
            <input type="text" class="form-control" 
      	     id="ename" placeholder="사원명 입력" name="ename">
         	</div>
         	<button type="submit" class="btn btn-primary">등록</button>
     	</form>
		<table class="table table-striped table-hover">
			<thead class="table-success">
		      	<tr  class="text-center">
				    <th>Firstname</th>
				    <th>Lastname</th>
				    <th>Email</th>
		      	</tr>
		    </thead>
		    <tbody>
			   	<tr  class="text-center">
			        <td>John</td>
			        <td>Doe</td>
			        <td>john@example.com</td>
			   	</tr>
		 	</tbody>
		</table>      	
    </div>
</body>
</html>
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
<script type="text/javascript">
var xhr = new XMLHttpRequest();
	function call01(){
		xhr.open("get","0626_1.jsp",false);
		xhr.send();
		var data = xhr.responseText;
		var ps = document.querySelector("#ps")
		ps.innerText=data
		
	}
	function call02(){
		xhr.open("get","0626_2.jsp",false);
		xhr.send();
		var data = xhr.responseText;
		var arry = data.split(",")
		var ss = document.querySelectorAll("#ss")
		ss[0].innerText = arry[0]
		ss[1].innerText = arry[1]
		ss[2].innerText = arry[2]
	}
	function call03(){
		xhr.open("get","0626_3.jsp",false);
		xhr.send();
		var data = xhr.responseText;
		var obj = JSON.parse(data)
		var tds = document.querySelectorAll("tbody td")
		tds[0].innerText = obj.name
		tds[1].innerText = obj.price
		tds[2].innerText = obj.cnt
	}
</script>	
	
    <div class="container mt-3">
       <h2>가져오기 버튼</h2>
       <form action="">
            <button onclick="call01()" type="button" class="btn btn-primary">하나데이터</button>
            <button onclick="call02()" type="button" class="btn btn-primary">배열데이터</button>
            <button onclick="call03()" type="button" class="btn btn-primary">json데이터</button>
        </form>
        
       <h3>하나데이터</h3>
       <p id="ps"></p>
       
       <h3>배열데이터</h3>
       <span id="ss"></span>
       <span id="ss"></span>
       <span id="ss"></span>
       
       <h3>json데이터</h3>
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
     
     

</body>
</html>
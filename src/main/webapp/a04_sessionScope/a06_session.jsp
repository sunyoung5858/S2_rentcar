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
    <div class="container mt-3">
    	<h2>세션 scope 범위</h2>
		<table class="table table-striped table-hover">
			<col width="25%"><col width="25%">
			<col width="25%"><col width="25%">
			<thead class="table-success">
		      	<tr  class="text-center">
				    <th>page</th>
				    <th>request</th>
				    <th>session</th>
				    <th>application</th>
		      	</tr>
		    </thead>
		    <tbody>
			   	<tr  class="text-center">
			        <td><%=pageContext.getAttribute("fruit01") %></td>
			        <td><%=request.getAttribute("fruit02") %></td>
			        <td onclick="location.href='a06_session.jsp'"><%=session.getAttribute("fruit03") %>(클릭)</td>	      
			        <td><%=application.getAttribute("fruit04") %></td>
			   	</tr>
		 	</tbody>
		</table> 
     	
    </div>
</body>
</html>
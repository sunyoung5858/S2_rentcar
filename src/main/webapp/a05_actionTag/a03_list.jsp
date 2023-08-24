<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="backendWeb.z01_vo.Emp"
    import="java.util.List"
    %>
<body>


		<table class="table table-striped table-hover">
			<thead class="table-success">
		      	<tr  class="text-center">
				    <th>사원번호</th>
				    <th>사원명</th>
				    <th>직책</th>
		      	</tr>
		    </thead>
		    <tbody>
		    	<%
		    	List<Emp> empList = (List)request.getAttribute("empList");
		    	for(Emp e:empList){
		    	%>
			   	<tr  class="text-center">
			        <td><%=e.getEmpno() %></td>
			        <td><%=e.getEname() %></td>
			        <td><%=e.getJob() %></td>
			   	</tr>
			   	<%} %>
		 	</tbody>
		</table>      	

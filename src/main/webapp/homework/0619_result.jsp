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
    	<h2>등록 내역</h2>
		  <table class="table">
		    <thead class="table-success">
		      <tr>
		        <th>물건명</th>
		        <th>선택한 가격(check_box)</th>
		        <th>선택한 가격(select)</th>
		      </tr>
		    </thead>	  
		    <tbody>
		      <tr>
		        <td>
		        <%
		        String stuffS = request.getParameter("stuff");
			    if(stuffS!=null){ stuffS = "";}
			    out.print(stuffS+" ");
		        %>
		        </td>
		        <td>
		        <%
		        	String priceS1 [] = request.getParameterValues("buy_price");
					if(priceS1!=null)
					for(int idx=0;idx<priceS1.length;idx++){
						if(priceS1[idx]!=null && !priceS1[idx].equals(""))
						out.print(priceS1[idx]+" ");
					}
		        %>
		       </td>
		       <td>
		        <%
		        	String priceS2 [] = request.getParameterValues("price");
					if(priceS2!=null)
					for(int idx=0;idx<priceS2.length;idx++){
						if(priceS2[idx]!=null && !priceS2[idx].equals(""))
						out.print(priceS2[idx]+" ");
					}
		        %>
		       </td>  
		      </tr>    
		    </tbody>
		  </table>
     </div>


</body>
</html>
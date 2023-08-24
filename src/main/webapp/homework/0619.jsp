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
    <h2>구매정보 등록</h2>
    <form action="0619_result.jsp">
         <div class="mb-3 mt-3">
            <label for="stuff">구매할 물건:</label>
            <input type="text" class="form-control" 
              id="stuff" placeholder="구매할 물건 입력" name="stuff">
         </div>
	<%
		String prices [] ={"1000","2000","3000","4000","5000"};
	%>
		<div class="mb-3 mt-3">
		<label for="buy_price">구매할 물건의 가격:</label><br>
		<% for(String price:prices){ %>
		<input type="checkbox" name="buy_price" value="<%=price%>"/><%=price%><br>
		<%} %>
		 </div>
         <div class="mb-3 mt-3">
	      <label for="price">물건의 가격:</label>
	      <select class="form-control" id="price" name="price" multiple>
	      	<option value="0">=가격 선택=</option>
	      	<option value="1000">1000원</option>
	      	<option value="2000">2000원</option>
	      	<option value="3000">3000원</option>
	      	<option value="4000">4000원</option>
	      	<option value="5000">5000원</option>
	      </select>
	    </div>  
         <button type="submit" class="btn btn-primary">등록</button>
     </form>
  </div>


</body>
</html>
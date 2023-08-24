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
	연습문제
--%>

 <%
 	String product = request.getParameter("product");
		if(product==null) product="";
 	String priceS = request.getParameter("price");
 		int price = 0;
 	 	if(priceS!=null) price= Integer.parseInt(priceS);
 	String cntS = request.getParameter("cnt");
 		int cnt = 0;
	 	if(cntS!=null) cnt= Integer.parseInt(cntS);
 %>
    <div class="container mt-3">
       <h2>구매물품 조회</h2>
       <form method="post">
            <div class="mb-3 mt-3">
            <label for="product">물건명:</label>
            <input type="text" class="form-control" 
              id="product" placeholder="구매할 물건을 입력하세요" name="product" value="">
            </div>
            <div class="mb-3 mt-3">
            <label for="price">가격:</label>
            <input type="number" class="form-control" 
              id="price" placeholder="구매할 물건의 가격을 입력하세요." name="price" value="">
            </div>
            <div class="mb-3 mt-3">
            <label for="cnt">갯수:</label>
            <input type="number" class="form-control" 
              id="cnt" placeholder="구매할 물건의 수량을 입력하세요." name="cnt" value="">
            </div>
            <button type="submit" class="btn btn-primary">등록</button>
        </form>
        <br>
       <table class="table">
          <thead class="table-success">
               <tr>
                 <th>물건명</th>
                 <th>가격</th>
                 <th>수량</th>
                 <th>총금액</th>
               </tr>
          </thead>
          <tbody>
               <tr>
                 <td><%=product %></td>
                 <td><%=price %></td>
                 <td><%=cnt %></td>
                 <td><%=price*cnt %></td>
               </tr>
          </tbody>
        </table>         
     </div> 
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
  	import = "frontWeb.z99_project.a03_rent.*"
	import = "frontWeb.z99_project.vo.*"
  	import="java.util.*"
    %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <title>지점 등록</title>
</head>
<body>
<%
String storeS = request.getParameter("store");
String store_name = request.getParameter("store_name");
String store_address = request.getParameter("store_address");
String store_phone = request.getParameter("store_phone");

S2storeDao dao = new S2storeDao();

String regYN = "F";

int store = 0;
if(storeS != null) {
	store = Integer.parseInt(storeS);
	S2Store s = new S2Store(store, store_name, store_address, store_phone);
	dao.insertS2store(s);
	regYN = "Y";
}
%>

<script>
	var regYN = "<%=regYN%>"
	if(regYN == 'Y') {
		alert ("등록 성공");
	}
	
	function checkValid() {
		return true;
	}
</script>
    <div class="container mt-3">
       <h2>지점정보 등록</h2>
       <form onsubmit = "return checkValid()" method="post" action = "store_view.jsp" >
             <div class="mb-3 mt-3">
            <label for="store">지점일련번호:</label>
            <input type="number" class="form-control" 
              id="store" placeholder="지점 일련번호 입력" name="store">
            </div>
            <div class="mb-3 mt-3">
            <label for="store_name">지점명:</label>
            <input type="text" class="form-control" 
              id="store_name" placeholder="지점명 입력" name="store_name">
            </div>
            
            <div class="mb-3 mt-3">
            <label for="store_address">주소:</label>
            <input type="text" class="form-control" 
              id="store_address" placeholder="주소 입력" name="store_address">
            </div>
            
            <div class="mb-3 mt-3">
            <label for="store_phone">전화번호:</label>
            <input type="number" class="form-control" 
              id="store_phone" placeholder="전화번호 입력" name="store_phone">
            </div>        
            <button type="submit" class="btn btn-primary" >등록</button>    
        </form>
    </div>
</body>
</html>
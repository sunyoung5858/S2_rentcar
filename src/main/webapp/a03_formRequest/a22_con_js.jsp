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
 <%
	String product = "냉장고";
	int price = 25000;
	int cnt = 3;
	int tot = price*cnt;
	%>
	 <script type="text/javascript">
	 	var product = "<%=product%>"
	 	var price = <%=price%>
	 	var cnt = <%=cnt%>
		function check01(){
				alert(product)
		}
		function check02(){
				alert(price)
		}
		function check03(){
				alert(cnt)
		}
		function check04(){
				alert(price*cnt)
		}
		function call(){
			alert("이건 고가일까 저가일까?")
			var tot = price*cnt;
			if(tot<50000){
				alert(tot+"저가")
			}else{
				alert(tot+"고가")
			}
		}
	</script>
<body>
    <h1>구매 정보</h1>
    <h1 onclick="check01()">물건명</h1>
    <h1 onclick="check02()">가격</h1>
    <h1 onclick="check03()">수량</h1>
    <h1 onclick="check04()">금액</h1>
	<h2 onclick="call()">고가/저가</h2>
	
       
</body>
</html>
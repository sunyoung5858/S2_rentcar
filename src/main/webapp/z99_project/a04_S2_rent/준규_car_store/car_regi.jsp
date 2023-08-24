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
    <title>Insert title here</title>
</head>
<body>
<%
String carNumberS = request.getParameter("car_number");
String distance_drivenS = request.getParameter("distance_driven");
String car_plate = request.getParameter("car_plate");
String storeS = request.getParameter("store");
String model = request.getParameter("model");

S2carDao dao = new S2carDao();

String regYN = "F";

int car_number =  0;
int distance_driven = 0;
int store = 0;
if(carNumberS != null) {
	car_number = Integer.parseInt(carNumberS);
	distance_driven = Integer.parseInt(distance_drivenS);
	store = Integer.parseInt(storeS);
	
	S2Car s = new S2Car(car_number, distance_driven, car_plate, store, model);
	dao.insertS2car(s);
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
      <h2>차량정보 등록</h2>
       <form onsubmit = "return checkValid()" method="post" action = "car_view.jsp">
            <div class="mb-3 mt-3">
            <label for="car_number">차량관리번호:</label>
            <input type="number" class="form-control" 
              id="car_number" placeholder="차량 관리 번호 입력" name="car_number">
            </div>
            <div class="mb-3 mt-3">
            <label for="distance_driven">주행거리:</label>
            <input type="number" class="form-control" 
              id="distance_driven" placeholder="주행거리 입력" name="distance_driven">
            </div>
            
            <div class="mb-3 mt-3">
            <label for="car_plate">번호판 번호:</label>
            <input type="text" class="form-control" 
              id="car_plate" placeholder="번호판 번호 입력" name="car_plate">
            </div>            
            
            <div class="mb-3 mt-3">
            <label for="store">지점일련번호:</label>	
            <input type="number" class="form-control" 
              id="store" placeholder="지점일련번호입력" name="store">
            </div>
            
            <div class="mb-3 mt-3">
            <label for="model">모델명:</label>
            <input type="text" class="form-control" 
              id="model" placeholder="모델명 입력" name="model">
            </div>         
             <button type="submit" class="btn btn-primary">등록</button>   
        </form>
      </div>
</body>
</html>
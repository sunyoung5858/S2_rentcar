<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
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
<%--  emplist를 키 입력시, post 방식으로 ajax처리
1. 내용
	emp의 사원명과 직책입력시, 키입력과 동시에 post방식으로 요청을 처리하여
	비동기적으로 json데이터를 가져와서, 테이블 body에 출력하는 내용
	1) post방식
		ajax로 post방식을 처리하는 것을 url로 요청값을 처리하는 것이 아니라
		요청 body에 따로 요청값을 처리하기 때문에
		xhr.open("post",...,)
		xhr.setRequestHeader("Content-Type","application/x-www.form-urlencoded"
		xhr.send("key=val&...")으로 코드를 변경하여야 한다.
		
2. 개발순서
	1) 파일정리
		프런트단 a12_Gson_Sch_Post.jsp
		백엔드단 z12_empList.jsp
	2) backend (
		z12_empList.jsp?ename=A&job=A)
		요청값 : 사원명(ename), 직책(job)
		import : Dao, Vo, Gson
		List<Emp> empList = dao.getEmpList(ename,job)
		<%=gson.toJson(empList)%>		
	3) frontend
		a12_Gson_Sch_Post.jsp
		대상객체 지정
			<input onkeyup="schEmp()">
			<button type="button" onclick="schEmp()">
			
		이벤트핸들러함수 schEmp()
		 	- 입력 DOM객체
			var enameVal = document.querySelector("#ename").value
			var jobVal = document.querySelector("#job").value
			var qurStr = "ename="+enameVal+"&job"+jobVal
			var xhr = new XMLRequest()
			xhr.open("post","z12_empList.jsp",true)
			xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
			xhr.send(qurStr)
			xhr.onreadystatechange=function(){
				if(xhr.readyState==4&xhr.status==200{
					var empList = JSON.parse(xhr.responseText)
					console.log(empList)
					var show = ""
					empList.forEach(function(emp){
						show += "<tr>"
						show += "<td> + emp.empno+ "</td>"
						show += "<td> + emp.ename+ "</td>"
						show += "<td> + emp.job+ "</td>"
						show += "<td> + emp.sal+ "</td>"
						...
						show += "</tr>"
					})

				}
			}			
	
--%>
<script type="text/javascript">
//enter키를 눌렀을 때만 검색
function schEmp13(){
	var enameOb = document.querySelector("#ename")
    var jobOb = document.querySelector("#job")
	enameOb.value = enameOb.value.toUpperCase()
	jobOb.value = jobOb.value.toUpperCase()
	if(event.keyCode==13){
		schEmp();
	}
}
function schEmp(){
    var enameVal = document.querySelector("#ename").value
    var jobVal = document.querySelector("#job").value
    var qrStr ="ename="+enameVal+"&job="+jobVal
    var xhr = new XMLHttpRequest()
    xhr.open("post","z12_empList.jsp", true)
    xhr.setRequestHeader("Content-Type",
          "application/x-www-form-urlencoded")
    xhr.send(qrStr)
    xhr.onreadystatechange=function(){
       if(xhr.readyState==4 && xhr.status==200){
          console.log(xhr.responseText)
          var empList = JSON.parse(xhr.responseText)
          var empShow = document.querySelector("#empShow")
          var show = ""
          empList.forEach(function(emp){
             show+="<tr class='text-center'>"
             
             show+="<td>"+emp.empno+"</td>"
             show+="<td>"+emp.ename+"</td>"
             show+="<td>"+emp.job+"</td>"
             show+="<td>"+emp.mgr+"</td>"
             show+="<td>"+emp.sal+"</td>"
             show+="<td>"+emp.comm+"</td>"
             show+="<td>"+emp.deptno+"</td>"
             show+="</tr>"
          })
          empShow.innerHTML = show
       }
    }
    
 }

</script>


<body>
    <div class="container mt-3">
       <h2>사원정보 등록</h2>
       <form action="/">
            <div class="mb-3 mt-3">
            <label for="ename">사원명:</label>
            <input onkeyup="schEmp13()" type="text" class="form-control" 
              id="ename" placeholder="사원명 입력" name="ename">
            </div>
             <div class="mb-3 mt-3">
            <label for="job">직책명:</label>
            <input onkeyup="schEmp13()" type="text" class="form-control" 
              id="job" placeholder="직책 입력" name="job">
            </div>
            <button onclick="schEmp()" type="button" class="btn btn-primary">등록</button>
        </form>
       <table class="table">
          <thead class="table-success">
               <tr>
                 <th>사원번호</th>
                 <th>사원명</th>
                 <th>직책명</th>
                 <th>관리자번호</th>
                 <th>급여</th>
                 <th>보너스</th>
                 <th>부서명</th>
               </tr>
          </thead>
          <tbody id="empShow">
          </tbody>
        </table>         
     </div>
</body>
</html>
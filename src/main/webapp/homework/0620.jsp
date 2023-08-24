<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="backWeb2.z01_vo.Salgrade"
    import="backWeb.a01_dao.SalgradeDao"
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
<%--
[1단계:개념] 1. java와 js의 연동 처리할 때, 흐름 순서에 따른 코드 처리 순서를 기본예제와 함께 설명하세요
	자바에서 변수를 선언한다 ==> js 스크립트에서 java에서 선언한 변수를 가져와 새로 변수로 선언한다. => 이벤트를 생성해서 html(프론트단)으로 불러와 사용한다.
--%>
<%  String name = "홍길동";
	int age = 25;
	
	String answer = request.getParameter("answer");
	if(answer==null) answer="";
%>
<script type="text/javascript">
	var name = "<%=name%>"
	var age = <%=age%>
	function call01(){
		alert("당신의 이름은 "+name)		
	}
	function call02(){
		alert("당신의 나이는 "+age)		
	}
</script>
<%--
[1단계:코드] 2. java로 임의의 구구단을 만들어 html의 form에 출력하고, [ @@] x [@@   ]  정답입력[  ][정답확인]
              정답입력이 맞을시, 정답 그렇지 않을시 오답이 처리되게 하세요. java+js 연동
--%>
<%
	int random01 = (int)(Math.random()*8+2);
	int random02 = (int)(Math.random()*9+1);
%>
 
<body>
	<h1>1번 문제</h1>
	<h2 onclick="call01()">이름 출력</h2>
	<h2 onclick="call02()">나이 출력</h2>
	<br>
	<hr>
	
	
	
    <div class="container mt-3">
       <h1>2번 문제</h2>
       <h2 id="q1">문제</h2>
       <form>
            <div class="mb-3 mt-3">
            <label for="answer">정답 입력:</label>
            <input type="text" class="form-control" 
              id="answer" placeholder="정답을 입력하세요." name="answer">
            </div>
            <button type="button" class="btn btn-primary" onclick="call03()">등록</button>
        </form>
        <h2 id="a1">답안</h2>
        <h2 id="r1">정답여부</h2>
         <script type="text/javascript">
	     	var random01 = <%=random01%>
	     	var random02 = <%=random02%>
	     	var q1Ob =  document.querySelector("#q1");
	     	q1Ob.innerText = random01 +"x"+random02
	     	var a1Ob =  document.querySelector("#a1");
	     	var result = random01*random02
	     	a1Ob.innerText = result
	     	
	     	 function call03(){
	              if(answer.value==result){
	                 alert("정답입니다")
	              }else{
	                 alert("오답입니다")
	              }
	           }

	     </script>
     </div>
     <br>
 <%--
		[1단계:코드] 3. salgrade 테이블을 확인하여, 해당 항목에 맞는 속성으로 form 화면을 구성하고, 입력 후, 확인시, 요청값 처리후,
      Salgrade 객체에 등록이 되어 출력되게 처리하세요.
      
      <input> 태그의 required 속성은 폼 데이터(form data)가 서버로 제출되기 전 반드시 채워져 있어야 하는 입력 필드를 명시합니다.
 --%>    
      <div class="container mt-3">
       <h1>3번 문제</h2>
       <form>
            <div class="mb-3 mt-3">
            <label for="grade">등급 입력:</label>
            <input type="number" class="form-control" 
              id="grade" placeholder="등급을 입력하세요." name="grade">
            </div>
            <button type="submit" class="btn btn-primary">등록</button>
        </form>
<%        
	String gradeS = request.getParameter("grade");
	int grade = 0;
	if(gradeS!=null) grade = Integer.parseInt(gradeS); 
	
	String losalS = request.getParameter("losal");
	int losal = 0;
	if(losalS!=null) losal = Integer.parseInt(losalS); 
	
	String hisalS = request.getParameter("hisal");
	int hisal = 0;
	if(hisalS!=null) hisal = Integer.parseInt(hisalS); 

		SalgradeDao dao = new SalgradeDao();
		Salgrade s = dao.salgrade(grade);
    	if(grade!=0){
    	   	losal = s.getLosal();
   	  	  	hisal = s.getHisal();
   	 	}

%>        
        <table class="table table-striped table-hover">
			<thead class="table-success">
		      	<tr  class="text-center">
				    <th>등급</th>
				    <th>최저연봉</th>
				    <th>최소연봉</th>
		      	</tr>
		    </thead>
		    <tbody>
			   	<tr class="text-center">
			        <td><%=grade%></td>
			        <td><%=losal%></td>
			        <td><%=hisal%></td>	    
			   	</tr>		
		 	</tbody>
		</table> 
     </div>
     
</body>
</html>
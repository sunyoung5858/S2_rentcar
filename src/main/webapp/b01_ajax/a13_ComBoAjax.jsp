<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
</head>
<%--
    code(키, 값, 상위키,정렬순위)
    1000  과일   0
    1001  사과   1000 1
    1002  바나나  1000 2
    1003  딸기   1000 3
    1004  오렌지  1000 4
    select *
    from code
    where 상위키 = 1000;
    order 정렬순위   
1. select(Combo box) 모듈 ajax로 list 및 등록 처리
	만들어 보기.
2. 처리순서
	1) DB 테이블 sql 구성
	2) Dao 생성
	3) 초기 list 화면 구성 : ajax처리(backend )
	4) 등록 click시 등록 화면 구성
	5) 클릭시, 상세화면 구성
		- 수정/삭제 처리..
	6) Combox Box 활용
		
# 진행 순서
0. 파일
	프런트(a13_ComBoAjax.jsp)
1. backend(z13_comboList.jsp)
	요청값 : title
	import 처리(dao,Gson,Code)
	Gson으로 json 데이터 로딩	
-------------------------------------		   
2. frontend(a13_ComBoAjax.jsp)    
    1) 화면구성
    	제목 [   ] [검색]
    2) 이벤트 처리
    3) 이벤트 핸들러 처리
    	- 검색 DOM
    	- ajax 처리
    	- 화면 리스트 처리..
    	
# 코드 등록 처리 ajax
1. back단(servlet 이용)
	1) Dao(등록 처리-메서드 추가)
		sql (insert 문) 
			INSERT INTO code VALUES (code_seq.nextval, '과일','val',0,1);
			INSERT INTO code VALUES (code_seq.nextval, ?,?,?,?)
			
		dao insert메서드 추가.
	2) 요청값 받기
	3) 등록 결과 리턴 문자열  
2. front단
	1) 등록 버튼 : 클릭
	2) 등록 pop창 로딩(bootstrap 모달창)
		등록 항목 text
		제목:[  ]
		값 : [  ]
		상위번호: [  ]
		정렬순서:[  ]
		[등록]
	3) 이벤트 핸들러
		ajax로 등록 controller 호출 처리
# 등록후, 처리 프로세스
1. 등록완료
	- 등록 성공
	- 화면에 있는 데이터를 재조회 처리
	- 입력데이터 초기화 
	- 계속 여부 확인
		- 계속시 등록 처리할 수 있게 하고
		- 취소시 창이 닫게 처리.
		  	
    	
 --%>
<script type="text/javascript">
	function schCode13(){
		if(event.keyCode==13){
			schCode();
		}
	}
	function schCode(){
		var titleOb = document.querySelector("#title")
		var refnoOb = document.querySelector("#refno")
		
		var xhr = new XMLHttpRequest()
		xhr.open("post","z13_comboList.jsp",true)
		xhr.setRequestHeader("Content-Type",
				"application/x-www-form-urlencoded")
		xhr.send("title="+titleOb.value+"refno="+refnoOb.value)
		xhr.onreadystatechange=function(){
			if(xhr.readyState==4&&xhr.status==200){
				var codeList = JSON.parse(xhr.responseText)
				var show=""
				codeList.forEach(function(code){
					show+="<tr oncbclick='detail("+code.no+")'>"
					show+="<td>"+code.no+"</td>"
					show+="<td>"+code.title+"</td>"
					show+="<td>"+(code.val==undefined?'':code.val)+"</td>"
					show+="<td>"+code.refno+"</td>"
					show+="<td>"+code.ordno+"</td>"
					show+="</tr>"
				})
				var tBody = document.querySelector("tbody")
				tBody.innerHTML = show;
			}
		}
		
	}
	function detail(no){
		
	}
</script>
<body>
	<div class="container mt-3">
		<h2>Combox list</h2>
		<div class="mb-3 mt-3">
			<label for="title">제목:</label> <input type="text"
				class="form-control" id="title" onkeyup="schCode13()"
				placeholder="타이틀 입력" name="title">
			<label for="refno">상위코드:</label> 
			<input type="text" value="0"
				class="form-control" id="refno" onkeyup="schCode13()"
				placeholder="상위코드 입력" name="refno">
				
				
		</div>
		<button type="button" class="btn btn-success" data-bs-toggle="modal"
			data-bs-target="#myModal">코드등록</button>

		<button onclick="schCode()" type="button" class="btn btn-primary">조회</button>
		<table class="table table-striped table-hover">
			<thead class="table-success">
				<tr class="text-center">
					<th>번호</th>
					<th>제목</th>
					<th>값</th>
					<th>상위번호</th>
					<th>정렬</th>
				</tr>
			</thead>
			<tbody>
				<tr class="text-center">
					<td>John</td>
					<td>Doe</td>
					<td>john@example.com</td>
					<td>john@example.com</td>
				</tr>
			</tbody>
		</table>
	</div>
	<!-- The Modal -->
	<div class="modal" id="myModal">
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">코드 등록</h4>
					<button type="button" id="modalClsBtn" class="btn-close" data-bs-dismiss="modal"></button>
					
				</div>

				<!-- Modal body 
				
				-- 제목, 값, 상위번호, 정렬 
-- title, val, refno, ordno 
				-->
				<form id="regFrm">
				<div class="modal-body">
					<div class="mb-3 mt-3">
						<label for="title">제목:</label> 
						<input type="text"
							class="form-control" id="title"
						placeholder="타이틀 입력" name="title">
					</div>
					<div class="mb-3 mt-3">
						<label for="val">값:</label> 
						<input type="text"
							class="form-control" id="val"
						placeholder="값 입력" name="val">
					</div>
					<div class="mb-3 mt-3">
						<label for="number">상위번호:</label> 
						<input type="text"
							class="form-control" id="refno"
						placeholder="상위번호 입력" name="refno">
					</div>
					<div class="mb-3 mt-3">
						<label for="ordno">정렬순서:</label> 
						<input type="number"
							class="form-control" id="ordno"
						placeholder="정렬순서 입력" name="ordno">
					</div>										
				</div>
				</form>
				<div class="modal-footer">
					<button type="button" class="btn btn-success"
						onclick="ajaxSave()">등록</button>
					<button type="button" class="btn btn-primary"
						onclick="ajaxUpdate()">수정</button>
					<button type="button" class="btn btn-warning"
						onclick="ajaxDelete()">삭제</button>
						
					<button type="button" class="btn btn-danger"
						data-bs-dismiss="modal">Close</button>
						
				</div>

			</div>
		</div>
	</div>
	<script type="text/javascript">
		function ajaxSave(){
			// 입력 val
			var title=document.querySelector(".modal-body #title").value
			var val=document.querySelector(".modal-body #val").value
			var refno=document.querySelector(".modal-body #refno").value
			var ordno=document.querySelector(".modal-body #ordno").value
			var qStr = "title="+title+"&refno="+refno
					+"&ordno="+ordno+"&val="+val
			//alert(qStr)		
			// ajax 처리..
			var xhr = new XMLHttpRequest()
			xhr.open("post","/backendWeb/codeIns.do",true)
			xhr.setRequestHeader("Content-Type",
					"application/x-www-form-urlencoded")
			xhr.send(qStr)
			xhr.onreadystatechange=function(){
				if(xhr.readyState==4&&xhr.status==200){
					var result = xhr.responseText
					if(result=="Y"){
						alert("등록성공")
						schCode()
						document.querySelector("#regFrm").reset()
						if(!confirm("계속등록하시겠습니까?")){
							// 창닫기 처리
							document.querySelector("#modalClsBtn").click()
						}
					}else{
						alert("등록실패")
					}
				}
			}
			
			
		}
		// 초기에 수행 처리..(화면에 검색된 상태에서 처리)
		schCode();
		/*
		1. 등록완료
			- 등록 성공
			- 화면에 있는 데이터를 재조회 처리
			- 입력데이터 초기화 
			- 계속 여부 확인
				- 계속시 등록 처리할 수 있게 하고
				- 취소시 창이 닫게 처리.
		2. 리스트데이터 
			- 제목:[   ]
		    - 상위코드:[  ]
			계층형 sql로 계층별로 리스되게 처리.
			
		
		*/
		
	</script>

</body>
</html>
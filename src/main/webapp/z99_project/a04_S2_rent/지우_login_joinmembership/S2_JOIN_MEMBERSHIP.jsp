<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
   	import = "frontWeb.z99_project.a03_rent.A01_S2MemberDao"
    %>
<%
	String id = request.getParameter("id_input");
	if(id==null) id = "";
	String pass = request.getParameter("pass");
	if(pass==null) pass="";
	
	A01_S2MemberDao dao = new A01_S2MemberDao();
	String idCheckResult = dao.idCheck(id); // 아이디 중복체크 결과
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
</head>
<body>
	<div class="container mt-3">
		<h2>회원 가입</h2>
		<form method="post">
			<div>
				<label for="id">아이디</label>
				<input type="text" id="id_input" placeholder="아이디를 입력해주세요"
					name="id_input" size="30" value="<%=id %>" required>
				<input id="id_check" type="submit" value="중복확인"><span><%= idCheckResult%></span><br>
				<span id="id_able"></span>
			</div>
		</form>
		<form id="memberInfo" method="post" action="S2_JOIN_MEMBERSHIP_RSV.jsp">
			<span style="font-size:12px"> ※ 비밀번호는 영문, 숫자, 특수문자를 포함하여 8~16자로 사용해야 합니다.</span>
			<input style="visibility: hidden" type="text" id="id" name="id" value="<%=id%>"/> <%-- 위에서 입력한 아이디를 가져옴 --%>
			<div>
				<label for="pass">비밀번호</label>
				<input type="password" id="pass" onkeyup="submit_able()" placeholder="비밀번호를 입력해주세요" name="pass" size="30" required>
				<span id="pass_able"></span>
			</div>
			<div>
				<label for="pass_check">비밀번호 확인</label>
				<input type="password" id="pass_check" onkeyup="submit_able()" placeholder="비밀번호를 한 번 더 입력해주세요" name="pass_check" size="30" required>
				<span id="pass_error"></span> <!-- 비밀번호가 다를 경우 메시지 출력 -->
			</div>
			<div>
				<label for="name">성함</label>
				<input type="text" id="name" placeholder="성함을 입력해주세요" name="name" size="30" required>
			</div>
			<div>
				<label for="phone_first">연락처</label>
				<select name="phone_first">
					<option value="010" selected>010</option>
					<option value="011">011</option>
					<option value="015">015</option>
					<option value="016">016</option>
					<option value="017">017</option>
					<option value="018">018</option>
					<option value="019">019</option>
				</select>
				<label for="phone_middle"> - </label>
				<input type="text" name="phone_middle" pattern="[0-9]{4}"
					maxlength="4" size="2" required oninvalid="this.setCustomValidity('정확히 입력해주세요')">
				<label for="phone_last"> - </label>
				<input type="text" name="phone_last" pattern="[0-9]{4}"
					maxlength="4" size="2" required oninvalid="this.setCustomValidity('정확히 입력해주세요')">
                <input id="ckNum" type="button" value="인증번호 확인" onclick="checkNum()" />
                <span id="certiNumValid"></span>
			</div>
			<div>
				<label for="email_id">이메일</label>
				<input type="text" id="email_id" placeholder="이메일 아이디 입력" name="email_id" size="30" required>
				<span>@</span>
				<input id="email_address" name="email_address" placeholder="example.com" required>
				<select onchange="selectEmail()" name="email_address_select">
					 <option value="" selected>직접입력</option>
					 <option value="naver.com">naver.com</option>
					 <option value="hanmail.net">hanmail.net</option>
					 <option value="gmail.com">gmail.com</option>
					 <option value="nate.com">nate.com</option>
					 <option value="yahoo.co.kr">yahoo.co.kr</option>
					 <option value="daum.net">daum.net</option>
					 <option value="kakao.com">kakao.com</option>
				</select>
			</div>
			<div>
				<label for="address">주소</label>
				<input type="text" id="address" placeholder="주소를 입력해주세요(필수)" name="address" size="30" required><br>
				<span>　 　</span><input type="text" id="address_detail" placeholder="상세 주소를 입력해주세요(선택)" name="address_detail" size="30"/>
			</div>
			<button type="submit" id="submit_button">등록</button>
		</form>
	</div>
	<script>
	var checkNumTrue = false;
	function checkNum() {
	    event.preventDefault(); // 기본 동작 취소
	    let ranNum = Math.floor(Math.random() * 900000 + 100000)
	    let putRanNum = prompt("인증번호를 입력하세요: " + ranNum)
	    var msg = ""
	    if (putRanNum == ranNum) {
	        alert('인증되었습니다')
	        var messageElement = document.getElementById('certiNumValid');
	        messageElement.innerText = "인증 완료";
	        checkNumTrue = true;
	        checkSubmitButton();
	        ckNum.disabled = true;
	    } else {
	        alert('인증에 실패했습니다')
	    }
	}	
	
    /* 회원 ID 유효성 검사 */
    var id = document.getElementById("id_input");
    var id_able = document.getElementById("id_able");
    var id_check = document.getElementById("id_check");
    id.onkeyup = function () {
        var ptrn = /^[a-zA-Z0-9]{6,12}$/;
        var str = this.value;
        if (ptrn.test(str)) {
            id_able.innerText = "사용 가능한 ID입니다.";
            id_able.style.color = "blue";
            id_check.disabled = false;
        } else {
            id_able.innerText = "아이디 형식이 맞지 않습니다.";
            id_able.style.color = "red";
            id_check.disabled = true;
            
        }
    };
	/* 아이디 중복확인 후 전송버튼이 활성화됨 */
	var condition_id = (id.value!=""); // 아이디중복확인 성공시 true 반환
	var condition_pass; // 비밀번호 유효성검사 통과시 true 반환
	var condition_pass_check; // 비밀번호와 비밀번호 확인에 입력한 값이 일치할때 true 반환
    

    /* 비밀번호 유효성 검사 */
    var pass = document.querySelector("[name=pass]");
    var pass_able = document.getElementById("pass_able");
    pass.onkeyup = function () {
        var ptrn = /^(?=.*[a-zA-Z0-9])(?=.*[!@#$%^&*()])[a-zA-Z0-9!@#$%^&*()]{8,16}$/;
        var str = this.value;
        if (ptrn.test(str)) {
            pass_able.innerText = "사용가능한 비밀번호입니다.";
            pass_able.style.color = "blue";
            condition_pass = 1;
        } else {
            pass_able.innerText = "비밀번호 형식이 맞지 않습니다.";
            pass_able.style.color = "red";
            condition_pass = 0;
        }
        checkSubmitButton()
    };
	
	/* 비밀번호 확인 */
    var pass = document.querySelector("[name=pass]");
    var pass_check = document.querySelector("[name=pass_check]");
    var pass_error = document.getElementById("pass_error");
    pass_check.onkeyup = function() {
        if (pass_check.value === pass.value) {
        	pass_error.innerHTML="비밀번호가 일치합니다.";
        	pass_error.style.color = "blue";
        	condition_pass_check = 1;
        } else {
        	pass_error.innerText = "비밀번호가 일치하지 않습니다.";
        	pass_error.style.color = "red";
        	condition_pass_check = 0;
        }
        checkSubmitButton()
    };
    
    /* 회원가입버튼 활성화 조건식 */
    /*
    	condition_id: id중복확인 성공시 true
    	condition_pass: 비밀번호 조건 만족하면 1을 반환
    	condition_pass_check: 비밀번호와 비밀번호 확인에 입력한 값이 같은 경우 1을 반환
    	checkNumTrue: 인증번호 통과시 true
    	모두 true일 경우 회원가입버튼 활성화
    */
	function checkSubmitButton() {
		if (condition_id&&condition_pass==1&&condition_pass_check==1&&checkNumTrue) {
			submit_button.disabled = false;
		} else {
			submit_button.disabled = true;
		}
	}

    
    
    /* 이메일 주소 선택 */
    function selectEmail(){
    	email_address.value = document.querySelector("[name=email_address_select]").value
    }

	</script>
</body>
</html>
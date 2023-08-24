<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<title>아이디 찾기</title>
</head>
<body>
	<div class="container mt-3">
		<h2>아이디 찾기</h2>
		<form action="">
			<div class="mb-3 mt-3">
			<label for="phone">전화번호:</label>
			<input type="text" class="form-control" 
				id="phone" placeholder="사원번호 입력" name="phone">
			</div>
			<div class="mb-3 mt-3">
			<label for="ename">사원명:</label>
			<input type="text" class="form-control" 
				id="ename" placeholder="사원명 입력" name="ename">
			</div>
			<button type="submit" class="btn btn-primary">등록</button>
		</form>
		<table class="table">
			<thead class="table-success">
				<tr>
					<th>Firstname</th>
					<th>Lastname</th>
					<th>Email</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>John</td>
					<td>Doe</td>
					<td>john@example.com</td>
				</tr>
			</tbody>
		</table>         
	</div>
</body>
</html>
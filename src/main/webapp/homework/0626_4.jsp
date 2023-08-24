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
       <h2>구매한 물건</h2>
       <form action="">
            <div class="mb-3 mt-3">
            <label for="name">물품명:</label>
            <input type="text" class="form-control" 
              id="name" placeholder="물품명 입력" name="name">
            </div>
            <div class="mb-3 mt-3">
            <label for="price">가격:</label>
            <input type="number" class="form-control" 
              id="price" placeholder="가격 입력" name="price">
            </div>
            <div class="mb-3 mt-3">
            <label for="cnt">갯수:</label>
            <input type="number" class="form-control" 
              id="cnt" placeholder="갯수 입력" name="cnt">
            </div>
            <button type="submit" class="btn btn-primary">등록</button>
        </form>
       <table class="table">
          <thead class="table-success">
               <tr>
                 <th>물품명</th>
                 <th>가격</th>
                 <th>갯수</th>
                 <th>총금액</th>
               </tr>
          </thead>
          <tbody>
               <tr>
                 <td>${param.name}</td>
                 <td>${param.price}</td>
                 <td>${param.cnt}</td>
                 <td>${param.price*param.cnt}</td>
               </tr>
          </tbody>
        </table>         
     </div>
</body>
</html>
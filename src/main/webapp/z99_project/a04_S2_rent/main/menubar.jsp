<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>



    <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link href="../css/main.css" rel="stylesheet">
    <title>Insert title here</title>
</head>
<body>
  <!-- 상단 네비바-->
    <nav class="navbar navbar-expand-sm bg-light navbar-light" style="border-bottom: 1px solid lightgray;*/">
        <div class="container-fluid">
          <a class="navbar-brand" href="#"></a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
          </button>
            <div class="collapse navbar-collapse justify-content-end" id="collapsibleNavbar">
                <ul class="navbar-nav"> 
                <li class="nav-item">
                    <a class="nav-link" href="../지우_login_joinmembership/S2_Terms.jsp" style="font-size: 15px;">회원가입</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../지우_login_joinmembership/S2_Login.jsp" style="font-size: 15px;">로그인</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../지우_login_joinmembership/S2_Mypage.jsp" style="font-size: 15px;">마이페이지</a>
                </li>  
                </ul>
            </div>
        </div>
    </nav>
    <!--상단메뉴-->
    <div class="container-fluid" style="border-bottom: 1px solid lightgray;">
        <div class="container-xxl" style="min-height:60px;">
                <ul class="row align-items-center" style="list-style-type: none; margin-top: 30px;">
                    <li class="col-xxl-3">
                        <a style="text-decoration: none;" href="../지우_login_joinmembership/S2_Main.jsp"><p class="h5 text-dark fw-bold">S2렌터카</p></a>
                    </li>
                    <li class="col-xxl-2">
                        <a style="text-decoration: none;" href="#"><p class="h5 text-center text-dark fw-bold">렌트예약</p></a>
                    </li>
                    <li class="col-xxl-2">
                        <a style="text-decoration: none;" href="#"><p class="h5 text-center text-dark fw-bold">인기매물</p></a>
                    </li>
                    <li class="col-xxl-2">
                        <a style="text-decoration: none;" href="#"><p class="h5 text-center text-dark fw-bold">SNS</p></a>
                    </li>
                    <li class="col-xxl-2">
                        <a style="text-decoration: none;" href="#"><p class="h5 text-center text-dark fw-bold">공지사항</p></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    
</body>
</html>
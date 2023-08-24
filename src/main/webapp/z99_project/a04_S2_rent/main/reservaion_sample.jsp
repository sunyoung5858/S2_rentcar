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
  <!--상단메뉴-->
 <jsp:include page="/z99_project/a04_S2_rent/main/menubar.jsp" flush="true"/>
     
    <!-- 경로확인 -->    
    <div class="container-fluid" style="border-bottom: 1px solid lightgray;">
        <div class="container-xxl">
            <div class="col-xxl-12">
                
                <div class="loc">
                    <div class="locCon">렌트예약<img class="locImg" src="../images/icon_next.png" alt="">예약하기</div>
                </div>
            </div>
        </div>
    </div>
    <!--본문--> 
    <div class="container-xxl">
        <div class="row" style="margin-top: 50px;">
            <!-- 왼쪽박스 -->
            <div class="col-xxl-9 left-box">
                <h4 class="date-title">대여기간 선택</h4>
                <!-- h4 지우고 지도추가~~ -->
            </div>


			 <!-- 오른쪽박스(메뉴바) -->
            <div class="col-xxl-3 right_box">
                <div class="inner-box">
                    <div class="spr-box-1">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                            <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>
                        </svg>
                        <p>차량 대여 장소</p>
                        <a href=""><p>변경</p></a>
                    </div>
                    <div class="spr-box-2">
                        <input type="hidden" name="" value=""/>
                        <p>선택된 장소</p>
                    </div>
                </div>
                <div class="inner-box">
                    <div class="spr-box-1">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                            <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>
                        </svg>
                        <p>차량 대여 장소</p>
                        <a href=""><p>변경</p></a>
                    </div>
                    <div class="spr-box-2">
                        <input type="hidden" name="" value=""/>
                        <p>선택된 장소</p>
                    </div>
                </div>
                <div class="inner-box" style="background-color: red;"><!--이부분에 red컬러 주면 됩니다.(div-inner box) -->
                    <div class="spr-box-1">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-calendar-check" viewBox="0 0 16 16">
                            <path d="M10.854 7.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 9.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
                            <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z"/>
                        </svg>
                        <p>대여기간</p>
                        <a href=""><p>변경</p></a>
                    </div>
                    <div class="spr-box-2">
                        <input type="hidden" name="" value=""/>
                        <p id="addStartdate">대여일</p><p>~</p><p id="addEnddate">반납일</p>
                    </div>
                </div>
                <div class="inner-box">
                    <div class="spr-box-1">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-car-front-fill" viewBox="0 0 16 16">
                            <path d="M2.52 3.515A2.5 2.5 0 0 1 4.82 2h6.362c1 0 1.904.596 2.298 1.515l.792 1.848c.075.175.21.319.38.404.5.25.855.715.965 1.262l.335 1.679c.033.161.049.325.049.49v.413c0 .814-.39 1.543-1 1.997V13.5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1-.5-.5v-1.338c-1.292.048-2.745.088-4 .088s-2.708-.04-4-.088V13.5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1-.5-.5v-1.892c-.61-.454-1-1.183-1-1.997v-.413a2.5 2.5 0 0 1 .049-.49l.335-1.68c.11-.546.465-1.012.964-1.261a.807.807 0 0 0 .381-.404l.792-1.848ZM3 10a1 1 0 1 0 0-2 1 1 0 0 0 0 2Zm10 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2ZM6 8a1 1 0 0 0 0 2h4a1 1 0 1 0 0-2H6ZM2.906 5.189a.51.51 0 0 0 .497.731c.91-.073 3.35-.17 4.597-.17 1.247 0 3.688.097 4.597.17a.51.51 0 0 0 .497-.731l-.956-1.913A.5.5 0 0 0 11.691 3H4.309a.5.5 0 0 0-.447.276L2.906 5.19Z"/>
                        </svg>
                        <p>차량선택</p>
                        <a href=""><p>변경</p></a>
                    </div>
                    <div class="spr-box-2">
                        <input type="hidden" name="" value=""/>
                        <p>선택된 차량</p>
                    </div>
                </div>
                <div class="inner-box">
                    <div class="d-grid gap-2">
                        <button class="btn btn-balck" type="button" onclick="">다음</button>
                      </div>
                </div>
            </div>
        </div>
    </div>




  
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

    
</body>
</html>
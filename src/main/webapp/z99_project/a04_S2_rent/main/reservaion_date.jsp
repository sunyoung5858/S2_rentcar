<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link href="../css/main.css" rel="stylesheet">
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
    <script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
    <title>Insert title here</title>
    
    <script type="text/javascript">
    //datepicker세팅 및 시작일보다 이전 날짜는 반납일에서 비활성화
        $(document).ready(function () {
                $.datepicker.setDefaults($.datepicker.regional['ko']); 
                $( "#startDate" ).datepicker({
                    
                     changeMonth: true, 
                     changeYear: true,
                     nextText: '다음 달',
                     prevText: '이전 달', 
                     dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
                     dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
                     monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                     monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                     dateFormat: "yy-mm-dd",
                     minDate:0,
                     maxDate: "+5M", // 선택할수있는 최대날짜(5달 이후)
                     onClose: 
                     function() {    
                        var selectstartDate = $("#startDate").val();
                          //시작일(startDate) datepicker가 닫힐때
                          //종료일(endDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
                         $("#endDate").datepicker( "option", "minDate", selectstartDate);
                     }    
                });
                $( "#endDate" ).datepicker({
                     changeMonth: true, 
                     changeYear: true,
                     nextText: '다음 달',
                     prevText: '이전 달', 
                     dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
                     dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
                     monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                     monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                     dateFormat: "yy-mm-dd",
                     maxDate: "+5M", // 선택할수있는 최대날짜(5달 이후)
                     onClose: 
                     function(selectedDate) {    
                         // 종료일(endDate) datepicker가 닫힐때
                         // 시작일(startDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 시작일로 지정
                         $("#startDate").datepicker( "option", "maxDate", selectedDate );
                     }    
                });   
                $("#startDate").focus(); 
        });
    </script>
</head>
<body>
  <!-- 상단 네비바-->
  <!--상단메뉴-->
  <jsp:include page="./menubar.jsp" flush="true"/>
    
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
            <div class="col-xxl-9 left-box">
                <h4 class="date-title">대여기간 선택</h4>
                <div class="row input-box">
                    <div class="col-12 date-box" id="datepicker">
	                    <form action="" method="post">
	                        <div class="input-group mb-3 startdate">
	                            <span class="input-group-text" id="inputGroup-sizing-default">대여일</span>
	                            <input type="text" name="startdate" id="startDate" onchange="addBox1(this.value)" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" style="text-align:center;">
	                        </div>
	                        <div class="input-group mb-3 enddate">
	                            <span class="input-group-text" id="inputGroup-sizing-default">반납일</span>
	                            <input type="text" name="enddate" id="endDate" onchange="addBox2(this.value)" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" style="text-align:center;" >
	                        </div>
	                    </form>
                    </div>
                </div>
                <div class="notic-box">
                    <p id="totDate">총 일자</p>
                </div>
            </div>
<script>
// input onclick이벤트
    function addBox1(val){
    	//왼쪽 박스에 받은 시작일 넣어주기
        document.getElementById('addStartdate').innerText = val;
        //시작일 반납일간의 대여 일수 구하기
        totDay()
    }
    function addBox2(val){
    	//왼쪽 박스에 받은 반납일 넣어주기
        document.getElementById('addEnddate').innerText = val;
      	//시작일 반납일간의 대여 일수 구하기
    	totDay()
    }
    function totDay(){
    	//시작일 반납일간의 대여 일수 구하기
        var startdate =  document.getElementById('startDate').value;
        var enddate =  document.getElementById('endDate').value;
        //날짜형식에서 -빼주기
        startdate = startdate.split('-');
        enddate = enddate.split('-');
        // 날짜 형식으로 변환
        startdate = new Date(startdate[0],startdate[1],startdate[2]);
        enddate = new Date(enddate[0],enddate[1],enddate[2]);
        //두 날짜의 시간차를 구하기
        var btSE = enddate.getTime()-startdate.getTime();
        var vtSEday = btSE/(1000*3600*24);
        // 총 일수 안내박스에 넣기
        totDate=document.getElementById('totDate')
        // 시작일과 반납일을 모두 선택해야함.
        if(isNaN(vtSEday)==true){
            totDate.innerText='시작일과 반납일을 모두 선택해주세요.';
        }else if(vtSEday==0){
            alert('최소 대여기간은 1일 입니다.\n하루 이상의 날짜를 선택해주세요.')
            startdate="";
        }
        else{    
            totDate.innerText='총 '+vtSEday+'일 선택하셨습니다.';
          	//다음버튼 활성화 및 색상변경
            document.getElementById('next-btn').disabled = false;
            document.getElementById('next-btn-box').style.backgroundColor = "red";
        }
    }
</script>
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
                <div class="inner-box" style="background-color: red;">
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
                <div class="inner-box" id="next-btn-box">
                    <div class="d-grid gap-2">
                        <button class="btn btn-balck" style="border:none;font-size:18px;color:white;font-weight:600;" type="button" disabled id="next-btn" onclick="clicknext()">다음</button>
                      </div>
                </div>
            </div>
        </div>
    </div>

<script>
function clicknext(){
	//alert("클릭시도")
	var startdate = document.getElementById('startDate').value
	var enddate = document.getElementById('endDate').value
	//alert(startdate)
	//alert(enddate)
	var query = "startdate="+startdate+"&enddate="+enddate
	//값과 함께 링크로 전달
	location.href="reservaion_car.jsp?"+query;
}
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

    
</body>
</html>
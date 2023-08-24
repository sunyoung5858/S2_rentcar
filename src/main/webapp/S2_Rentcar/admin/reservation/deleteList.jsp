<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="S2_Rentcar.vo.S2_Reservation"
	import="S2_Rentcar.admin.S2_ReservationDao"
%>

<%
 	String Reservation_numberS = request.getParameter("Reservation_number");
	int Reservation_number = 0;
	if(Reservation_numberS!=null) Reservation_number = Integer.parseInt(Reservation_numberS);
 	S2_ReservationDao dao = new S2_ReservationDao();
 	dao.deleteReservation(Reservation_number);
%>
	<script>
		alert('예약 내역이 삭제되었습니다.\n예약번호 : '+<%=Reservation_number%>)
		location.href='Reservation_info.jsp'
	</script>
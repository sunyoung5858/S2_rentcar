<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import = "frontWeb.z99_project.a03_rent.*"
	import = "frontWeb.z99_project.vo.*"
	import = "java.util.*"
%>
<% 
	S2_ReservationDao dao = new S2_ReservationDao();
	for(S2_RSearchList r: dao.rlist()){ 
%>			
<tr class="text-center">
    <td><%=r.getReservation_number()%></td>
    <td><%=r.getId()%></td>
    <td><%=r.getName()%></td>
    <td><%=r.getPhone()%></td>
    <td><%=r.getStartdateS()%></td>
    <td><%=r.getEnddateS() %></td>
    <td><%=r.getStore_name() %></td>
    <td><%=r.getCar_number()%></td>
    <td class="">
      <button class="btn btn-danger" onclick="location.href='deleteList.jsp?Reservation_number=<%=r.getReservation_number()%>'">삭제</button>
    </td>
</tr>
	<%}%>
</body>
</html>
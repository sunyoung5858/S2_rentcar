<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import = "frontWeb.z99_project.a03_rent.*"
	import = "frontWeb.z99_project.vo.*"
	import = "java.util.*"
%>
<% 
	String startdateS = request.getParameter("startdate");
	if(startdateS==null) startdateS="2000-01-01";
	String enddateS = request.getParameter("enddate");
	if(enddateS==null) enddateS="2050-01-01";
	String id = request.getParameter("id");
	if(id==null) id="";
	String name = request.getParameter("name");
	if(name==null) name="";
	String storename = request.getParameter("storename");
	if(storename==null) storename="";
	
	S2_ReservationDao dao = new S2_ReservationDao();

	Map<String,String> sch = new HashMap<String,String>();
	sch.put("startdate",startdateS);
	sch.put("enddate",enddateS);
	sch.put("id",id);
	sch.put("name",name);
	sch.put("storename",storename);
	for(S2_RSearchList sl: dao.getRList(sch)){ 
%>			
  	<tr class="text-center">
       	<td><%=sl.getReservation_number()%></td>
	    <td><%=sl.getId()%></td>
	    <td><%=sl.getName()%></td>
	    <td><%=sl.getPhone()%></td>
	    <td><%=sl.getStartdateS()%></td>
	    <td><%=sl.getEnddateS() %></td>
	    <td><%=sl.getStore_name() %></td>
	    <td><%=sl.getCar_number()%></td>
       <td class="">
         <button class="btn btn-danger" onclick="location.href='deleteList.jsp?Reservation_number=<%=sl.getReservation_number()%>'">삭제</button>
       </td>
  	</tr>
  	<%}%>

</body>
</html>
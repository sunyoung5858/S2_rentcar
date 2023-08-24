<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "frontWeb.z99_project.a03_rent.*"
	import = "frontWeb.z99_project.vo.*"
	import = "java.util.*"
%>

<%
	String car_kind = request.getParameter("car_kind");
		if(car_kind==null) car_kind="";
	String startdate = (String)session.getAttribute("startdate");
	String enddate = (String)session.getAttribute("enddate");
    String store = "제주 오토하우스1";

    S2_ReservationDao dao = new S2_ReservationDao();
    
    Map<String,String> sch = new HashMap<String,String>();
	sch.put("store",store);
	sch.put("car_kind",car_kind);
	sch.put("startdate",startdate);
	sch.put("enddate",enddate);
	
	for(S2Model cl: dao.getCarList(sch)){ 
%>
	<div style="float:left;width:45%;height:200px;margin:20px 20px 0 20px; background-color:red;">            		
   		<div style="float:left;padding:20px;width:50%; height:200px;">
   			<img src="../images/car_exp.jpg" alt="차량이미지"/>
   		</div>
   		<div style="float:left;padding:20px;width:50%; height:200px;">
   			<h3><%=cl.getModel()%></h3>
   			<h3><%=cl.getExpense() %></h3>
   		</div>
   	</div>
<%	}%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="S2_Rentcar.vo.S2_Member"
	import="S2_Rentcar.admin.S2_MemberDao"
	import="java.util.ArrayList"
	import="java.util.*"
%>
<% 
	String id = request.getParameter("id");
	if(id==null) id="";
	String name = request.getParameter("name");
	if(name==null) name="";
	String phone = request.getParameter("phone");
	if(phone==null) phone="";
	
	S2_MemberDao dao = new S2_MemberDao();

	Map<String,String> sch = new HashMap<String,String>();
	sch.put("id",id);
	sch.put("name",name);
	sch.put("phone",phone);
	for(S2_Member sl: dao.getMList(sch)){ 
%>			
  	<tr class="text-center">
       	<td><%=sl.getId()%></td>
	    <td><%=sl.getName()%></td>
	    <td><%=sl.getPhone()%></td>
	    <td><%=sl.getEmail()%></td>
	    <td><%=sl.getAddress()%></td>
	    <td><%=sl.getSignup_dateS()%></td>
	    <td><%=sl.getPoint()%></td>
       <td class="">
         <button class="btn btn-primary">수정</button>
         <button class="btn btn-danger" onclick="location.href='deleteList.jsp?id=<%=sl.getId()%>'">삭제</button>
       </td>
  	</tr>
  	<%}%>

</body>
</html>
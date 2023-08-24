<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="S2_Rentcar.vo.S2_Member"
	import="S2_Rentcar.admin.S2_MemberDao"
	import="java.util.ArrayList"
	import="java.util.*"
	import="java.util.Date"
%>
<script type="text/javascript">
//삭제버튼
function deleteBtn(){
	
	
}

</script>

<% 
	S2_MemberDao dao = new S2_MemberDao();
	for(S2_Member m: dao.mlist()){ 
%>			
<tr class="text-center">
    <td><%=m.getId()%></td>
    <td><%=m.getName()%></td>
    <td><%=m.getPhone()%></td>
    <td><%=m.getEmail()%></td>
    <td><%=m.getAddress()%></td>
    <td><%=m.getSignup_dateS()%></td>
    <td><%=m.getPoint()%></td>
    <td class="">
      <button class="btn btn-primary" onclick="">수정</button>
      <button class="btn btn-danger" onclick="location.href='deleteList.jsp?id=<%=m.getId()%>'">삭제</button>
    </td>
</tr>
	<%}%>
</body>
</html>

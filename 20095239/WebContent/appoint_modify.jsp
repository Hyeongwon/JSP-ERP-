<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@page import = "java.util.*, pro.AppointEntity, pro.PerManager" %>
<% 
request.setCharacterEncoding("utf-8");

String id = request.getParameter("id");

%>
<jsp:useBean id="per_man" class = "pro.PerManager" scope = "page" />
<%
ArrayList<AppointEntity> list_app = per_man.getAppointByidList(id);
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<hr>
<table border= '1' cellspacing='1' cellpadding='0' align = 'center'>
<tr>
<th rowspan = "2" style = "background: #D9E5FF; width:140px;">발령일자</th>
<th rowspan = "2" style = "background: #D9E5FF; width:140px;">사번</th>
<th rowspan = "2" style = "background: #D9E5FF; width:140px;">이름</th>
<th rowspan = "2" style = "background: #D9E5FF; width:140px;">발령구분</th>
<th rowspan = "2" style = "background: #D9E5FF; width:140px;">입사구분</th>
<th colspan = "4" style = "background: #D9E5FF; width:140px;">발령사항</th>
</tr>
<tr align = 'center'>
<td colspan = "2" style = "background: #D9E5FF; width:140px;">직위 -> 직위</td>
<td colspan = "2" style = "background: #D9E5FF; width:140px;">부서 -> 부서</td>
</tr>


<%
	for(AppointEntity ae : list_app) {
%>

		<tr align = 'center'>
		<td><%=ae.getAppoint_date() %></td>
		<td><%=ae.getAppoint_per_num() %></td>
		<td><%=ae.getAppoint_per_name() %></td>
		<td><%=ae.getAppoint_cla() %></td>
		<td><%=ae.getAppoint_per_cla() %></td>
		<td><%=ae.getAppoint_rank_to() %></td>
		<td><%=ae.getAppoint_rank_from() %></td>
		<td><%=ae.getAppoint_depart_to() %></td>
		<td><%=ae.getAppoint_depart_from() %></td>
		</tr>
<%
	}
%>

</table>
</body>
</html>
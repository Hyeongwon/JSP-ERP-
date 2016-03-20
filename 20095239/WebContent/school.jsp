<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@page import = "java.util.*, pro.SchoolEntity, pro.PerManager, pro.PerEntity" %>
<% 
request.setCharacterEncoding("utf-8");

String id = request.getParameter("id"); 

%>
<jsp:useBean id="per_man" class = "pro.PerManager" scope = "page" />
<%
ArrayList<SchoolEntity> list_sch = per_man.getSchoolList(id);
PerEntity pe = per_man.getperById(id);
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<hr>
<h2><%=pe.getEmployee_name() %>님의 학력사항</h2>
<table border= '1' cellspacing='1' cellpadding='0' align = 'center'>
<tr>
<th style = "background: #D9E5FF; width:140px;">학력</th>
<th style = "background: #D9E5FF; width:140px;">학교명</th>
<th style = "background: #D9E5FF; width:140px;">입학일자</th>
<th style = "background: #D9E5FF; width:140px;">졸업일자</th>
<th style = "background: #D9E5FF; width:140px;">주/야구분</th>
<th style = "background: #D9E5FF; width:140px;">소재지</th>
<th style = "background: #D9E5FF; width:140px;">졸업구분</th>


<%
	for(SchoolEntity se : list_sch) {
%>

		<tr align = 'center'>
		<td><%=se.getEducation() %></td>
		<td><%=se.getEducation_name() %></td>
		<td><%=se.getEducation_date() %></td>
		<td><%=se.getGraduation_date() %></td>
		<td><%=se.getDay_night() %></td>
		<td><%=se.getLocation() %></td>
		<td><%=se.getClassfication() %></td>
		</tr>
<%
	}
%>

</table>
</body>
</html>
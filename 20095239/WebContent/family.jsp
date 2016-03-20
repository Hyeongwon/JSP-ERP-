<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@page import = "java.util.*, pro.FamilyEntity, pro.PerManager, pro.PerEntity" %>
<% 
request.setCharacterEncoding("utf-8");

String id = request.getParameter("id"); 

%>
<jsp:useBean id="per_man" class = "pro.PerManager" scope = "page" />
<%
	ArrayList<FamilyEntity> list_fam = per_man.getFamilyList(id);
	PerEntity pe = per_man.getperById(id);
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<hr>
<h2><%=pe.getEmployee_name() %>님의 가족사항</h2>
<table border= '1' cellspacing='1' cellpadding='0' align = 'center'>
<tr>
<th style = "background: #D9E5FF; width:140px;">성명</th>
<th style = "background: #D9E5FF; width:140px;">관계</th>
<th style = "background: #D9E5FF; width:140px;">최종학력</th>
<th style = "background: #D9E5FF; width:140px;">직업</th>
<th style = "background: #D9E5FF; width:140px;">회사명</th>
<th style = "background: #D9E5FF; width:140px;">직위</th>
<th style = "background: #D9E5FF; width:120px;">동거여부</th>
<th style = "background: #D9E5FF; width:120px;">부양여부</th>

<%
	for(FamilyEntity fe : list_fam) {
%>

		<tr align = 'center'>
		<td><%=fe.getFamily_name() %></td>
		<td><%=fe.getRelation() %></td>
		<td><%=fe.getLevel_education() %></td>
		<td><%=fe.getJob() %></td>
		<td><%=fe.getCompany_name() %></td>
		<td><%=fe.getPosition() %></td>
		<td><%=fe.getLive() %></td>
		<td><%=fe.getSupport() %></td>
		</tr>
<%
	}
%>


</table>
</body>
</html>
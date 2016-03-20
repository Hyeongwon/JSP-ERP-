<%@page import="pro.LicenseEntity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@page import = "java.util.*, pro.LanguageEntity, pro.PerManager, pro.PerEntity" %>
<% 
request.setCharacterEncoding("utf-8");

String id = request.getParameter("id"); 

%>
<jsp:useBean id="per_man" class = "pro.PerManager" scope = "page" />
<%
ArrayList<LanguageEntity> list_lan = per_man.getLanguageList(id);
PerEntity pe = per_man.getperById(id);
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<hr>
<h2><%=pe.getEmployee_name() %>님의 어학능력</h2>
<table border= '1' cellspacing='1' cellpadding='0' align = 'center'>
<tr>
<th style = "background: #D9E5FF; width:140px;">어학명</th>
<th style = "background: #D9E5FF; width:140px;">시행처</th>
<th style = "background: #D9E5FF; width:140px;">취득점수</th>

<%
	for(LanguageEntity le : list_lan) {
%>

		<tr align = 'center'>
		<td><%=le.getLanguage_name() %></td>
		<td><%=le.getLanguage_operated() %></td>
		<td><%=le.getLanguage_score() %></td>
		</tr>
<%
	}
%>

</table>
</body>
</html>
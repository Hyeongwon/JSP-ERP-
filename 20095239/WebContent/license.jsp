<%@page import="pro.LicenseEntity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@page import = "java.util.*, pro.LicenseEntity, pro.PerManager, pro.PerEntity" %>
<% 
request.setCharacterEncoding("utf-8");

String id = request.getParameter("id"); 

%>
<jsp:useBean id="per_man" class = "pro.PerManager" scope = "page" />
<%
ArrayList<LicenseEntity> list_lic = per_man.getLicenseList(id);
PerEntity pe = per_man.getperById(id);
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<hr>
<h2><%=pe.getEmployee_name() %>님의 자격.면허</h2>
<table border= '1' cellspacing='1' cellpadding='0' align = 'center'>
<tr>
<th style = "background: #D9E5FF; width:140px;">자격증</th>
<th style = "background: #D9E5FF; width:140px;">자격,면허번호</th>
<th style = "background: #D9E5FF; width:140px;">취득일자</th>
<th style = "background: #D9E5FF; width:140px;">만기일자</th>
<th style = "background: #D9E5FF; width:140px;">갱신일자</th>
<th style = "background: #D9E5FF; width:140px;">말소일자</th>
<th style = "background: #D9E5FF; width:140px;">말소사유</th>


<%
	for(LicenseEntity le : list_lic) {
%>

		<tr align = 'center'>
		<td><%=le.getLicense_name() %></td>
		<td><%=le.getLicense_num() %></td>
		<td><%=le.getGet_date() %></td>
		<td><%=le.getExpiration() %></td>
		<td><%=le.getRenew() %></td>
		<td><%=le.getCancel_date() %></td>
		<td><%=le.getCancel_reason() %></td>
		</tr>
<%
	}
%>

</table>
</body>
</html>
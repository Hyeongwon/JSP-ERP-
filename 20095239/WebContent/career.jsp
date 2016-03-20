<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@page import = "java.util.*, pro.CareerEntity, pro.PerManager, pro.PerEntity" %>
<% 
request.setCharacterEncoding("utf-8");

String id = request.getParameter("id"); 

%>
<jsp:useBean id="per_man" class = "pro.PerManager" scope = "page" />
<%
	CareerEntity ce = per_man.getCareerList(id);
	PerEntity pe = per_man.getperById(id);
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<hr>
<h2><%=pe.getEmployee_name() %>님의 경력사항</h2>
<table border= '1' cellspacing='1' cellpadding='0' align = 'center'>
<tr>
<th style = "background: #D9E5FF; width:140px;">입사일자</th>
<th style = "background: #D9E5FF; width:140px;">근무지</th>
<th style = "background: #D9E5FF; width:140px;">회사명</th>
<th style = "background: #D9E5FF; width:140px;">담당업무</th>
<th style = "background: #D9E5FF; width:140px;">담당부서</th>
<th style = "background: #D9E5FF; width:140px;">사유</th>

	<tr align = 'center'>
	
	<td><%=ce.getCareer_joined() %></td>
	<td><%=ce.getCompany_resign() %></td>
	<td><%=ce.getCompany_name() %></td>
	<td><%=ce.getDuty() %></td>
	<td><%=ce.getDepart() %></td>
	<td><%=ce.getReason() %></td>
	
	</tr>


</table>
</body>
</html>
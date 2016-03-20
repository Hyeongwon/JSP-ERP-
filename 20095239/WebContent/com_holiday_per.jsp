<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@page import = "java.util.*, pro.Per_holidayEntity, pro.ComManager" %>
<% 
request.setCharacterEncoding("utf-8");

String id = request.getParameter("id"); 

%>
<jsp:useBean id="com_man" class = "pro.ComManager" scope = "page" />
<%
ArrayList<Per_holidayEntity> list_per_hol = com_man.getper_holiday_List(id);
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<hr>
<h2>사원별휴가일수등록</h2>
<table border= '1' cellspacing='1' cellpadding='0' align = 'center'>
<tr>
<th style = "background: #D9E5FF; width:140px;">부서명</th>
<th style = "background: #D9E5FF; width:140px;">직급</th>
<th style = "background: #D9E5FF; width:140px;">사번</th>
<th style = "background: #D9E5FF; width:140px;">성명</th>
<th style = "background: #D9E5FF; width:140px;">입사일자</th>
<th style = "background: #D9E5FF; width:140px;">휴가일수</th>

<%
	for(Per_holidayEntity ph : list_per_hol) {
%>

		<tr align = 'center'>
		<td><%=ph.getDepart() %></td>
		<td><%=ph.getRank() %></td>
		<td><%=ph.getEmployee_num() %></td>
		<td><%=ph.getEmployee_name() %></td>
		<td><%=ph.getJoined_date() %></td>
		<td><input type = 'text' value = "<%=ph.getHoliday_duraion()%>"></td>
		</tr>
<%
	}
%>

</table>
</body>
</html>
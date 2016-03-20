<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
 a   {text-decoration: none; color:inherit }
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@page import = "java.util.*, pro.HolidayEntity, pro.ComManager" %>
<jsp:useBean id="com_man" class = "pro.ComManager" scope = "page" />
<%
ArrayList<HolidayEntity> list_he = com_man.getholiday_List();
%>
</head>
<body>
<script>
function usehol(com1, com2){
	var com1 = com1;
	var com2 = com2;
	
	window.opener.gethol(com1, com2);
	window.close();
	
}
</script>
<div align = "center">
<table border= '1' cellspacing='1' cellpadding='0' width = '500'>
<tr style = "background: #D9E5FF;">
<td width = 150>휴가코드</td><td width = 300>휴가코드명</td>
</tr>
<tr>
<%
	for(HolidayEntity he : list_he) {
%>

		<tr>
		<td><%=he.getHoliday_code() %></td>
		<td onclick="usehol('<%=he.getHoliday_code()%>', '<%=he.getHoliday_name()%>',)"><%=he.getHoliday_name() %></td>

		</tr>
<%
	}
%>
</table>
</div>
</body>
</html>
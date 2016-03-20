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
<%@page import = "java.util.*, pro.Commute_codeEntity, pro.ComManager" %>
<jsp:useBean id="com_man" class = "pro.ComManager" scope = "page" />
<%
ArrayList<Commute_codeEntity> list_cce = com_man.getcomcode_List();
%>
</head>
<body>
<script>
function usecom(com1, com2, y){
	var com1 = com1;
	var com2 = com2;
	var y = y;
	document.write(y);
	if(y == 'Y') {
		window.opener.getcomcode(com1, com2);
		window.opener.gethol(com1, com2);
		window.close();
	}
	else {
		window.opener.getcomcode(com1, com2);
		window.close();
	}
	
}
</script>
<div align = "center">
<table border= '1' cellspacing='1' cellpadding='0' width = '500'>
<tr style = "background: #D9E5FF;">
<td width = 150>근태코드</td><td width = 300>근태코드명</td>
</tr>
<tr>
<%
	for(Commute_codeEntity cce : list_cce) {
%>

		<tr>
		<td><%=cce.getCom_id() %></td>
		<td onclick="usecom('<%=cce.getCom_id()%>', '<%=cce.getCom_name()%>', '<%=cce.getHoliday_yn()%>')"><%=cce.getCom_name() %></td>

		</tr>
<%
	}
%>
</table>
</div>
</body>
</html>
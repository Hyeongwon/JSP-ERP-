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
<%@page import = "java.util.*, pro.DepartEntity, pro.PerManager, pro.PerEntity" %>
<jsp:useBean id="per_man" class = "pro.PerManager" scope = "page" />
<%
ArrayList<PerEntity> list_per = per_man.getperList();
%>
</head>
<body>
<script>
function usename(name, num){
	var name = name;
	var num = num;
	window.opener.getname(name, num);
	window.close();
	
}
</script>
<div align = "center">
<table border= '1' cellspacing='1' cellpadding='0' width = '500'>
<tr style = "background: #D9E5FF;">
<td width = 150>사원번호</td><td width = 300>사원명</td>
</tr>
<tr>
<%
	for(PerEntity pe : list_per) {
%>

		<tr>
		<td><%=pe.getEmployee_num() %></td>
		<td onclick="usename('<%=pe.getEmployee_name()%>','<%=pe.getEmployee_num()%>')"><%=pe.getEmployee_name() %></td>

		</tr>
<%
	}
%>
</table>
</div>
</body>
</html>
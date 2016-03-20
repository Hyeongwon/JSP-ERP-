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
ArrayList<DepartEntity> list_dep = per_man.getdepartList();
%>
</head>
<body>
<script>
function useDepart(depart){
	var depart = depart;
	window.opener.getdepart(depart);
	window.close();
	
}
</script>
<div align = "center">
<table border= '1' cellspacing='1' cellpadding='0' width = '500'>
<tr style = "background: #D9E5FF;">
<td width = 150>부서코드</td><td width = 300>부서명</td>
</tr>
<tr>
<%
	for(DepartEntity de : list_dep) {
%>

		<tr>
		<td><%=de.getDepart_id() %></td>
		<td onclick="useDepart('<%=de.getDepart_name()%>')"><%=de.getDepart_name() %></td>

		</tr>
<%
	}
%>
</table>
</div>
</body>
</html>
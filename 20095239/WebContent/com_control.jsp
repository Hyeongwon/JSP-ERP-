<%@page import="pro.CurrentEntity"%>
<%@page import="pro.ComlistEntity"%>
<%@page import="pro.HolidayEntity"%>
<%@page import="pro.Commute_codeEntity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align = "center">
<%@ page import = "java.util.*, pro.ComEntity, pro.CurrentEntity" %>

<jsp:useBean id="com_man" class = "pro.ComManager" scope = "page" />
<jsp:useBean id="per_man" class = "pro.PerManager" scope = "page" />
<jsp:useBean id="com" class = "pro.ComEntity" scope = "page" />

<jsp:setProperty property="*" name="com"/>
<%
request.setCharacterEncoding("utf-8");
String action = request.getParameter("action");

if(action.equals("com_list")) {
	
	ArrayList<ComlistEntity> list_com =	com_man.getcomList();
	request.setAttribute("list_com", list_com);
	pageContext.forward("com_list.jsp");
}

else if(action.equals("com_code")) {
	ArrayList<Commute_codeEntity> list_com_code = com_man.getcomcode_List();
	request.setAttribute("list_com_code", list_com_code);
	pageContext.forward("com_code.jsp");

}

else if(action.equals("com_holiday")) {
	ArrayList<HolidayEntity> list_hol = com_man.getholiday_List();
	request.setAttribute("list_hol", list_hol);
	pageContext.forward("com_holiday_list.jsp");
}

else if(action.equals("com_add_form")) {
	pageContext.forward("com_add_form.jsp");
}

else if(action.equals("com_current")) {
	ArrayList<CurrentEntity> list_current = com_man.getcurrent_List();
	request.setAttribute("list_current", list_current);
	pageContext.forward("com_current.jsp");
}

else if(action.equals("com_add")) {
	String commute_code = request.getParameter("com");
	String commut_count = request.getParameter("count");
	String commute_start = request.getParameter("year1");
	String commute_finish = request.getParameter("year2");
	String commute_date = request.getParameter("year");
	String employee_id = per_man.getidByname(request.getParameter("num2"));
	
	com.setCommute_code(commute_code);
	com.setCommut_count(commut_count);
	com.setCommute_start(commute_start);
	com.setCommute_finish(commute_finish);
	com.setEmployee_id(employee_id);
	com.setCommdate(commute_date);
	
	if(com_man.com_insert(com)) {
		response.sendRedirect("com_control.jsp?action=com_list");
	}
	
	else
		throw new Exception("DB 입력 오류");
}
/*
else if(action.equals("delete")) {
	if(stddb.delete(std.getId())) response.sendRedirect("6control.jsp?action=list");
}*/
else {
	out.println("<script>alter('action 파라미터를 확인해 주세요!!!')</script>");
}
%>
</div>
</body>
</html>
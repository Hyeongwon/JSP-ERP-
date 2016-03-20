<%@page import="pro.CardEntity"%>
<%@page import="pro.CertEntity"%>
<%@page import="pro.SchoolEntity"%>
<%@page import="pro.PerEntity"%>
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
<%@ page import = "java.util.*, pro.Per_listEntity, pro.DepartEntity, pro.PayEntity, pro.AppointEntity" %>

<jsp:useBean id="per_man" class = "pro.PerManager" scope = "page" />
<jsp:useBean id="pay_man" class = "pro.PayManager" scope = "page" />
<jsp:useBean id="per" class = "pro.Per_listEntity" scope = "page" />
<jsp:useBean id="per_app" class = "pro.AppointEntity" scope = "page" />
<jsp:useBean id="dep" class = "pro.DepartEntity" scope = "page" />

<jsp:setProperty property="*" name="per"/>
<jsp:setProperty property="*" name="per_app"/>
<jsp:setProperty property="*" name="dep"/>
<%
request.setCharacterEncoding("utf-8");
boolean success = false;
String action = request.getParameter("action");

if(action.equals("per_list")) {
	
	ArrayList<Per_listEntity> list_per = per_man.getperList2();
	request.setAttribute("list_per", list_per);
	pageContext.forward("per_list.jsp");
}

else if(action.equals("code_add")) {
	pageContext.forward("per_code_add_form.jsp");
}

else if(action.equals("depart_add")) {
	
	ArrayList<DepartEntity> list_dep = per_man.getdepartList();
	request.setAttribute("list_dep", list_dep);
	pageContext.forward("per_depart_add_form.jsp");
	
}

else if(action.equals("per_modify_form")) {
	
	String id = request.getParameter("id");
	PerEntity per_en = new PerEntity(); 
	per_en = per_man.getperById(id);
	request.setAttribute("per_en", per_en);
	
	PayEntity pe = new PayEntity(); 
	pe = pay_man.getpayById(id);
	request.setAttribute("pe", pe);
	pageContext.forward("per_modify_form.jsp");
}


else if(action.equals("per_appoint")) {
	ArrayList<AppointEntity> list_app = per_man.getAppointList();
	request.setAttribute("list_app", list_app);
	pageContext.forward("per_appoint.jsp");
}
else if(action.equals("per_cert_list")) {
	ArrayList<CertEntity> list_cert = per_man.getCertList();
	request.setAttribute("list_cert", list_cert);
	pageContext.forward("per_cert_list.jsp");
}
else if(action.equals("per_card_copy")) {
	String depart_id = request.getParameter("depart_id");
	pageContext.forward("per_card_copy.jsp");
}
else if(action.equals("per_card_list")) {
	String id = request.getParameter("num2");
	ArrayList<CardEntity> card_list = per_man.getcard_list(id);
	System.out.println(card_list.size());
	request.setAttribute("card_list", card_list);
	pageContext.forward("per_card_copy_list.jsp");
	
}
else {
	out.println("<script>alter('action 파라미터를 확인해 주세요!!!')</script>");
}
%>
</div>
</body>
</html>
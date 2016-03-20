<%@page import="pro.Pay_total_list"%>
<%@page import="pro.Pay_list_totalEntity"%>
<%@page import="pro.PayrollEntity"%>
<%@page import="pro.Pay_Per_Entity"%>
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
<%@ page import = "java.util.*, pro.PayEntity, pro.PerEntity" %>

<jsp:useBean id="pay_man" class = "pro.PayManager" scope = "page" />
<jsp:useBean id="per_man" class = "pro.PerManager" scope = "page" />
<jsp:useBean id="payroll" class = "pro.PayrollEntity" scope = "page" />
<jsp:useBean id="pay" class = "pro.PayEntity" scope = "page" />
<jsp:useBean id="per_pay_list" class = "pro.Pay_Per_Entity" scope = "page" />

<jsp:setProperty property="*" name="pay"/>
<jsp:setProperty property="*" name="per_pay_list"/>
<%
request.setCharacterEncoding("utf-8");
boolean success = false;
String action = request.getParameter("action");

if(action.equals("pay_list")) {
	
	ArrayList<PayrollEntity> list_pay =	pay_man.getpayroll_List();
	request.setAttribute("list_pay", list_pay);
	pageContext.forward("pay_list.jsp");
}

else if(action.equals("per_pay_list")) {
	ArrayList<Pay_Per_Entity> list_pay_per = pay_man.getpay_perList();
	request.setAttribute("list_pay_per", list_pay_per);
	pageContext.forward("per_pay_list.jsp");
}

else if(action.equals("per_modify_form")) {
	
	String id = request.getParameter("id");
	PayEntity pe = new PayEntity(); 
	pe = pay_man.getpayById(id);
	request.setAttribute("pe", pe);
}


else if(action.equals("pay_add_form")) {
	pageContext.forward("per_add_form.jsp");
}
else if(action.equals("pay_add")) {
	
	String payroll_date = request.getParameter("year1") + "/" + request.getParameter("month1") + "-" + request.getParameter("Pay_Group");
	String payroll_con = "급여";
	String payroll_name = request.getParameter("year1") + "년 " + request.getParameter("month1") + "월 급여";
	String payroll_day = request.getParameter("year3");
	String payroll_year = request.getParameter("year4") + "-" + request.getParameter("month4");
	String payroll_sum = Integer.toString(per_man.getperList().size());

	payroll.setPayroll_date(payroll_date);
	payroll.setPayroll_con(payroll_con);
	payroll.setPayroll_name(payroll_name);
	payroll.setPayroll_day(payroll_day);
	payroll.setPayroll_year(payroll_year);
	payroll.setPayroll_sum(payroll_sum);

	if(pay_man.payroll_insert(payroll)) {
		response.sendRedirect("pay_control.jsp?action=pay_list");
	}
	
	else
		throw new Exception("DB 입력 오류");
}

else if(action.equals("pay_total_list")) {
	String id = request.getParameter("id");
	PayrollEntity pre = new PayrollEntity();
	pre = pay_man.getpayrollById(id);
	request.setAttribute("pre", pre);
	ArrayList<Pay_total_list> total_list = pay_man.gettotal_List();
	request.setAttribute("total_list", total_list);
	pageContext.forward("pay_total_list.jsp");
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
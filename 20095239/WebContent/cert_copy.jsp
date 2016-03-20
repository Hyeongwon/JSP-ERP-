<%@page import="pro.CertEntity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@page import = "java.util.*, pro.AppointEntity, pro.PerManager" %>
<% 
request.setCharacterEncoding("utf-8");

String id = request.getParameter("id");

%>
<jsp:useBean id="per_man" class = "pro.PerManager" scope = "page" />
<%
CertEntity cert = per_man.getCertByidList(id);
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>각종증명인쇄</title>
</head>
<body>
<input type = "button" value = "인쇄" onclick="window.print()"/>&nbsp;
<hr><br>
<div style = "width:650px; margin:0 auto">
<div style = "width:650px; margin:0 auto">
	<div style="font-size:12px; text-align:left">발급번호 : <%=cert.getCert_num() %></div>
<div style = "border:1px solid #000">
	<table border="0" cellspacing="0" cellpadding="0" style="width:650px;">
	     <tbody><tr>     
	     <td style="height:150px; font-size:26px; font-weight:bold; text-align:center;"><u>재 직 증 명 서</u></td>     
	     </tr>    
	     </tbody>
	</table>
	<table border="0" cellspacing="0" cellpadding="0" style="width:650px; margin:13px 0px 0px 0px; color:#000; font-size:12px; border-top:1px solid #000; border-collapse:collapse; table-layout:fixed">
	     <colgroup><col style="width:180px"><col></colgroup>
	          <tbody>      
	          <tr>       
	          	<th style="height:40px;border-right:1px solid #000; border-bottom:1px solid #000; text-align:center; font-weight:bold">성 명</th>
	  				<td style="text-align:left; border-bottom:1px solid #000">&nbsp;<%=cert.getCert_employee_name() %></td>
	          </tr>
	          <tr>
	           	<th style="height:40px; border-right:1px solid #000; border-bottom:1px solid #000; text-align:center; font-weight:bold">주민등록번호</th>
	       			<td style="text-align:left; border-bottom:1px solid #000">&nbsp;<%=cert.getRRnuml() %></td>
	          </tr>
			  <tr>
	             <th style="height:40px; border-right:1px solid #000; border-bottom:1px solid #000; text-align:center; font-weight:bold">현 주 소</th>
	      			<td style="text-align:left; height:40px; border-bottom:1px solid #000">&nbsp;<%=cert.getAdrress() %></td>
	       	  </tr>
	    	  <tr>
	      		<th style="height:40px; border-right:1px solid #000; border-bottom:1px solid #000; text-align:center; font-weight:bold">소 속</th>
	               	<td style="text-align:left; height:40px; border-bottom:1px solid #000">&nbsp;<%=cert.getDepart_name() %></td>
	   		  </tr>
	     	  <tr>
	           	<th style="height:40px; border-right:1px solid #000; border-bottom:1px solid #000; text-align:center; font-weight:bold">직 위</th>
	           		<td style="text-align:left; height:40px; border-bottom:1px solid #000">&nbsp;<%=cert.getRank() %></td>
	          </tr>
	          <tr>
	         	 <th style="height:40px; border-right:1px solid #000; border-bottom:1px solid #000; text-align:center; font-weight:bold">근무기간</th>
	                <td style="text-align:left; height:40px; border-bottom:1px solid #000">&nbsp;<%=cert.getJoined_date() %>~<%=cert.getCert_date() %></td>
	          </tr>
	          <tr>
	             <th style="height:40px; border-right:1px solid #000; border-bottom:1px solid #000; text-align:center; font-weight:bold">용 도</th>
	                <td style="text-align:left; height:40px; border-bottom:1px solid #000">&nbsp;<%=cert.getCert_use() %></td>
	          </tr>
		</tbody> 
	</table>
	<table border="0" cellspacing="0" cellpadding="0" style="width:650px;">
	     <tbody>
	     	<tr>      
	     		<td style="height:300px; text-align:center;font-size:16px; font-weight:bold; vertical-align:top; padding-top:30px">위와 같이 증명합니다.</td>
	    	 </tr>     
	    	 <tr>      
	     		<td style="text-align:center; font-size:12px; line-height:30px; padding-bottom:30px;">
	     			<div style="background:url(http://login.ecounterp.com/MemberInfo/Logo/_G1080_10b67c8d73f21f8e98092e524e23a4e9_sign.gif) 66% 84px no-repeat;">
	     	       		2014년 12월 06일<br><br>       
	     	          	서울 구로구 구로3동 에이스하이엔드타워2차 1703<br>       
	     	         	 대 표 이 사    김신래<br>       
	     	       		(주)가장많이쓰는ERP<br><br>      
	     	       </div>
	     	    </td>     
	     </tr>    
	     </tbody>
	 </table>
</div>
</div>
</div>
</body>
</html>
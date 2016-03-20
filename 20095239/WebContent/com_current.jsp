<%@page import="pro.CurrentEntity"%>
<%@page import="pro.Commute_codeEntity"%>
<%@page import="pro.PerEntity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%@page import = "java.util.*, pro.CurrentEntity" %>
<jsp:useBean id="list_current" scope="request" class = "java.util.ArrayList"/>

<script type="text/javascript">
function cm(name) {
	 var obj = document.getElementById(name);

	if (obj.style.display == 'none') 
	  obj.style.display = 'block';
	 else
	  obj.style.display = 'none';

	}
</script>

<style>
 *   {margin: 0; padding: 0;}
 a   {text-decoration: none;  color:inherit;}
 img {border: 0;}
 ul  {list-style: none;}

#main  {width: 100%;}
#header{width: 100%;}

#a:hover{color:#3399FF;}

</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id = "main">
<!-- 상단 -->
<br>
<div align = "center">

<h2>인사, 급여, 근태 관리 시스템</h2><br>
</div>
<div id="header" style="border-bottom: 2px solid gray; float:left; color:#BDBDBD;">
<!-- 로고 -->		<div id = "a" style="float:left; padding:20px;">SCH</div>
<!-- mypage -->	<div id = "a" style="float:left; padding:20px;">MyPage</div>
<!-- 재고1 -->	<div id = "a" style="float:left; padding:20px;">재고</div>
<!-- 재고2 -->	<div id = "a" style="float:left; padding:20px;">재고2</div>
<!-- 회계1 -->	<div id = "a" style="float:left; padding:20px;">회계1</div>
<!-- 회계2 -->	<div id = "a" style="float:left; padding:20px;">회계2</div>
<!-- 관리 -->		<div id = "a" style="float:left; padding:20px;"><a id = "a" href = "">관리 </a></div>
<!-- 세무 -->		<div id = "a" style="float:left; padding:20px;">세무</div>
<!-- 그룹워어 -->	<div id = "a" style="float:left; padding:20px;">그룹웨어</div>
</div>

<!-- 중단 -->
<div id="middle" style="border-bottom: 2px solid gray; float:left; width:2000px;">
<div id="money" style="display:block; padding :8px; float:left;"><a href = "pay_control.jsp?action=pay_list">급여관리</a></div>
<div style="display:block; padding :8px; float:left;"><a href = "per_control.jsp?action=per_list">인사관리</a></div>
<div style="display:block; padding :8px; float:left;"><a href = "com_control.jsp?action=com_list">근태관리</a></div>
</div>

<!-- 하단 -->
<div>

</div>
<!-- 좌 -->
<div id = "left" style="display:block; width:220px; float:left; background: #FCFCFC;">
<div style = "display:block; padding :15px; font-size: 25px; border-bottom-style: dotted;">근태관리</div>
<div style = "display:block; padding :5px; border-bottom-style: dotted;"><a href = "com_control.jsp?action=com_code">-> 근태코드등록</a></div>
<div style = "display:block; padding :5px; border-bottom-style: dotted;"><a href = "com_control.jsp?action=com_holiday">-> 휴가코드등록</a></div>
<div style = "display:block; padding :5px; border-bottom-style: dotted;"><a href = "com_control.jsp?action=com_add_form">-> 근태등록</a></div>
<div style = "display:block; padding :5px; border-bottom-style: dotted;"><a href = "com_control.jsp?action=com_list">-> 근태조회</a></div>
<div onclick="cm('left_7_sub')" style = "display:block; padding :5px; border-bottom-style: dotted;">-> 출력물</div>
<div id = "left_7_sub"style="display:none;">
<div style = "display:block; padding :5px;"><a href = "com_control.jsp?action=com_current">&nbsp; *근태현황</a></div>
<div style = "display:block; padding :5px;"><a href = "">&nbsp; *휴가잔여일수현황</a></div>
<div style = "display:block; padding :5px;"><a href = "">&nbsp; *근태집계표</a></div>
</div>
</div>

<!-- 우 -->
<div id = "right" style="display:block; float:left; padding:15px;">
<div align = 'center'><h4>근태현황</h4></div><br><br>

<div>
<div align = 'left'>회사명 : (주)가장많이쓰는ERP</div><div align = 'right'>2014-12-01~2014-12-15</div>
<table border= '1' cellspacing='1' cellpadding='0'>
<tr height = '20' style = "background: #D9E5FF;">
	<th width = '150'>전표일자</th>
	<th width = '150'>부서명</th>
	<th width = '150'>직급</th>
	<th width = '150'>사원번호</th>
	<th width = '150'>사원명</th>
	<th width = '150'>근태종류</th>
	<th width = '150'>근태</th>
	<th width = '300'>근태기간</th>

	<%
	double sum = 0.0;
	for(CurrentEntity ce : (ArrayList<CurrentEntity>)list_current) {
%>
	<tr align = center>
	<td><%=ce.getCom_date() %></td>
	<td><%=ce.getDpeart() %></td>
	<td><%=ce.getRank() %></td>
	<td><%=ce.getEmployee_num() %></td>
	<td><%=ce.getEmployee_name() %></td>
	<td><%=ce.getCom_code() %></td>
	<td><%=ce.getCom_count() %></td>
	<td><%=ce.getCom_start() %>~<%=ce.getCom_finish() %></td>
	

<%	
	sum = sum + Double.parseDouble((ce.getCom_count()));

	}
%>
<tr>
<td colspan = '6' align = 'center'>합계</td>
<td align = 'center'><%=sum %></td>
<td></td>
</tr>
</table>
</div>
</div>


</div>
</body>
</html>
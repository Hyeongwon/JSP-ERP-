<%@page import="pro.Pay_Per_Entity"%>
<%@page import="pro.PerEntity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%@page import = "java.util.*, pro.PayEntity, pro.PerEntity"%>
<jsp:useBean id="list_pay" scope="request" class = "java.util.ArrayList"/>
<jsp:useBean id="list_pay_per" scope="request" class = "java.util.ArrayList"/>

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
 a   {text-decoration: none; color:inherit;}
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
<div style="display:block; padding :8px; float:left;"><a href = "pay_control.jsp?action=pay_list">급여관리</a></div>
<div style="display:block; padding :8px; float:left;"><a href = "per_control.jsp?action=per_list">인사관리</a></div>
<div style="display:block; padding :8px; float:left;"><a href = "com_control.jsp?action=com_list">근태관리</a></div>
</div>

<!-- 하단 -->
<div>

</div>
<!-- 좌 -->
<div id = "left" style="display:block; width:220px; float:left; background: #FCFCFC;">
<div style = "display:block; padding :15px; font-size: 25px;">급여관리</div>
<div onclick="cm('left_1_sub')" style = "display:block; padding :5px; border-top-style: dotted;">-> 기본사항등록</div>
<div id = "left_1_sub"style="display:none;">
<div style = "display:block; padding :5px;"><a href = "pay_control.jsp?action=per_pay_list">&nbsp; *사원등록/수정</a></div>
<div style = "display:block; padding :5px;"><a href = "">&nbsp; *사원코드변경</a></div>
<div style = "display:block; padding :5px;"><a href = "">&nbsp; *수당항목등록</a></div>
<div style = "display:block; padding :5px;"><a href = "">&nbsp; *공제항목등록</a></div>
<div style = "display:block; padding :5px;"><a href = "">&nbsp; *기타코드등록</a></div>
<div style = "display:block; padding :5px;"><a href = "">&nbsp; *부서코드등록</a></div>
</div>
<div onclick="cm('left_2_sub')" style = "display:block; padding :5px; border-top-style: dotted;">-> 급여작업</div>
<div id = "left_2_sub"style="display:none;">
<div style = "display:block; padding :5px;"><a href = "">&nbsp; *급여계산</a></div>
<div style = "display:block; padding :5px;"><a href = "">&nbsp; *월별근무기록등록</a></div>
<div style = "display:block; padding :5px;"><a href = "">&nbsp; *급여복사</a></div>
<div style = "display:block; padding :5px;"><a href = "">&nbsp; *재직자퇴직금계산</a></div>
</div>
<div onclick="cm('left_3_sub')" style = "display:block; padding :5px; border-top-style: dotted;">-> 조회/인쇄</div>
<div id = "left_3_sub"style="display:none;">
<div style = "display:block; padding :5px;"><a href = "">&nbsp; *급여대장(명세서)인쇄</a></div>
<div style = "display:block; padding :5px;"><a href = "">&nbsp; *개인별급여내역인쇄</a></div>
<div style = "display:block; padding :5px;"><a href = "">&nbsp; *월별근무기록현황인쇄</a></div>
<div style = "display:block; padding :5px;"><a href = "">&nbsp; *재직자원청징수부</a></div>
<div style = "display:block; padding :5px;"><a href = "">&nbsp; *월별인원현황인쇄</a></div>
<div style = "display:block; padding :5px;"><a href = "">&nbsp; *급여명세서Email발송</a></div>
<div style = "display:block; padding :5px;"><a href = "">&nbsp; *급여집계표</a></div>
</div>
<div onclick="cm('left_4_sub')" style = "display:block; padding :5px; border-top-style: dotted;">-> 급여이체 파일관리</div>
<div id = "left_4_sub"style="display:none;">
<div style = "display:block; padding :5px;"><a href = "">&nbsp; *이체파일생성목록</a></div>
<div style = "display:block; padding :5px;"><a href = "">&nbsp; *계좌이체명세서</a></div>
</div>
<div onclick="cm('left_5_sub')" style = "display:block; padding :5px; border-top-style: dotted;">-> 퇴직처리</div>
<div id = "left_5_sub"style="display:none;">
<div style = "display:block; padding :5px;"><a href = "">&nbsp; *재직자퇴사처리</a></div>
<div style = "display:block; padding :5px;"><a href = "">&nbsp; *퇴직자리스트</a></div>
<div style = "display:block; padding :5px;"><a href = "">&nbsp; *퇴직금계산현황</a></div>
</div>
</div>

<!-- 우 -->
<div id = "right" style="display:block; float:left; padding:15px;">
<div><h4>>> 재직자리스트</h4></div><br>
<div align = "right">
<form method="POST" action = "per_search.jsp">

<select name = "search">
	<option SELECTED value = "======">======</option>
	<option value = "사번">사번</option>
	<option value = "이름">이름</option>
	<option value = "부서">부서</option>
	<option value = "직급">직급</option>
</select>

<input type = "text" name = "content">
<input type = "submit" value = "보내기">
<input type = "radio" name = "retire">퇴사자포함

</form>
</div>

<div>
<table border= '1' cellspacing='1' cellpadding='1' >
<tr height = '20' style = "background: #D9E5FF;">

	<th width = '70'>사번</th>
	<th width = '70'>성명</th>
	<th width = '70'>급여차수</th>
	<th width = '70'>부서</th>
	<th width = '70'>직급</th>
	<th width = '70'>급여구분</th>
	<th width = '100'>기본급</th>
	<th width = '70'>입사일자</th>
	<th width = '150'>계좌번호</th>

<%
	for(Pay_Per_Entity pbe1 : (ArrayList<Pay_Per_Entity>)list_pay_per) {
%>
	<tr align = 'center'>
	<td><%=pbe1.getDepart_name()%><%=pbe1.getRank()%><%=pbe1.getEmplyee_id()%></td>
	<td><%=pbe1.getEmplyee_name() %></td>
	<td><%=pbe1.getSalary_class() %></td>
	<td><%=pbe1.getDepart_name() %></td>
	<td><%=pbe1.getRank() %></td>
	<td><%=pbe1.getSalary_class() %></td>
	<td><%=pbe1.getBasepay() %></td>
	<td><%=pbe1.getJoined_date() %></td>
	<td><%=pbe1.getAccount_num() %></td>

<%	
	}
%>
</table>
</div>
</div>


</div>
</body>
</html>
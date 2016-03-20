<%@page import="pro.Commute_codeEntity"%>
<%@page import="pro.PerEntity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%request.setCharacterEncoding("utf-8"); %>
<%@page import = "java.util.*, pro.ComEntity" %>
<jsp:useBean id="list_com_code" scope="request" class = "java.util.ArrayList"/>
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
<div><h4>>> 근태등록</h4></div><hr><br>
<div>
<script type="text/javascript">

function open_win(num){

 window.open('com_add_com.jsp', "근태검색","width=450,height=500,left=800,top=300");

}
function open_win1(num){

	 window.open('per_card_copy_per.jsp', "사번검색","width=450,height=500,left=800,top=300");

}
function open_win2(num){

	 window.open('com_add_hol.jsp', "휴가검색","width=450,height=500,left=800,top=300");

}

function getcomcode(code1, code2) {
	
	com.value= code1;
	com1.value= code2;
}
function gethol(holday1, holday2) {
	
	hol.value= holday1;
	hol1.value= holday2;
}
function getname(name1, num1) {
	
	name2.value = name1;
	num2.value = num1;
	
}

</script>
<form name = 'form1' method="POST" action = "com_control.jsp?action=com_add">
<table border= '1' cellspacing='1' cellpadding='0' align = 'left' width = '500'>
<tr>
<th width = '100' height = '24'  style = "background: #D9E5FF;">일자</th>
<td width = '300' height = '19'>
<input type = "date" name = "year">
</td>
</tr>

<tr>
<th width = '100' height = '24'  style = "background: #D9E5FF;">사번</th>
<td width = '300' height = '19'>
<input type="text" name="num2" id="num2" size="10" maxlength="30" onblur="BlurColor2(this); " class="blue_zoom" value="">&nbsp;
<input type="text" name="name2" id="name2" size="10" maxlength="30" onblur="BlurColor2(this); " class="blue_zoom" value="">
<a onclick="open_win1()">
<img src="http://login.ecounterp.com/ECMain/ECount.Common/images/Icon_zoom.gif" width="22px" height="19px" alt="검색" align = "left">
</a>
</td>
</tr>

<tr>
<th width = '100' height = '24'  style = "background: #D9E5FF;">근태코드</th>
<td width = '300' height = '19'>
<input type="text" name="com" id="com" size="10" maxlength="30" onblur="BlurColor2(this); " class="blue_zoom" value="">&nbsp;
<input type="text" name="com1" id="com1" size="10" maxlength="30" onblur="BlurColor2(this); " class="blue_zoom" value="">
<a onclick="open_win()">
<img src="http://login.ecounterp.com/ECMain/ECount.Common/images/Icon_zoom.gif" width="22px" height="19px" alt="검색" align = "left">
</a>
</td>
</tr>

<tr>
<th width = '100' height = '24'  style = "background: #D9E5FF;">휴가코드</th>
<td width = '300' height = '19'>
<input type="text" name="hol" id="hol" size="10" maxlength="30" onblur="BlurColor2(this); " class="blue_zoom" value="">&nbsp;
<input type="text" name="hol1" id="hol1" size="10" maxlength="30" onblur="BlurColor2(this); " class="blue_zoom" value="">
<a onclick="open_win2()">
<img src="http://login.ecounterp.com/ECMain/ECount.Common/images/Icon_zoom.gif" width="22px" height="19px" alt="검색" align = "left">
</a>
</td>
</tr>

<tr>
<th width = '100' height = '24'  style = "background: #D9E5FF;">근태기간</th>
<td width = '300' height = '19'>
<input type = "date" name = "year1">
~
<input type = "date" name = "year2">
</td>
</tr>

<tr>
<td>
<input type="text" name="count" id="count" size="10" maxlength="30" onblur="BlurColor2(this); " class="blue_zoom" value="">&nbsp;
</td>
</tr>

</table>
<br>
<input type = "submit" value = "저장">
</form>
</div>
</div>


</div>
</body>
</html>
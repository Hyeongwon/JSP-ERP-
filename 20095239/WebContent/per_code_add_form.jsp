<%@page import="pro.PerEntity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%@page import = "java.util.*, pro.Per_listEntity" %>
<jsp:useBean id="list_per" scope="request" class = "java.util.ArrayList"/>

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
 a   {text-decoration: none; color:inherit }
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
<div style = "display:block; padding :15px; font-size: 25px">인사관리</div>
<div style = "display:block; padding :5px; border-top-style: dotted;"><a href="per_control.jsp?action=code_add">-> 기타코드등록</a></div>
<div style = "display:block; padding :5px; border-top-style: dotted;"><a href="per_control.jsp?action=depart_add">-> 부서코드등록</a></div>
<div onclick="cm('left_3_sub')" style = "display:block; padding :5px; border-top-style: dotted;">-> 기본사항등록</div>
<div id = "left_3_sub"style="display:none;">
<div style = "display:block; padding :5px;"><a href = "per_control.jsp?action=per_list">&nbsp; *인사카드등록</a></div>
<div style = "display:block; padding :5px;"><a href = "per_control.jsp?action=per_appoint">&nbsp; *인사발령등록</a></div>
<div style = "display:block; padding :5px;"><a href = "">&nbsp; *사원번호변경</a></div>
</div>
<div onclick="cm('left_4_sub')" style = "display:block; padding :5px; border-top-style: dotted;">-> 조회/인쇄</div>
<div id = "left_4_sub" style="display:none;">
<div style = "display:block; padding :5px;"><a href = "per_control.jsp?action=per_cert_list">&nbsp; *각종증명서인쇄</a></div>
<div style = "display:block; padding :5px;"><a href = "">&nbsp; *사원명부조회</a></div>
<div style = "display:block; padding :5px;"><a href = "per_control.jsp?action=per_card_copy">&nbsp; *인사카드인쇄</a></div>
<div style = "display:block; padding :5px;"><a href = "">&nbsp; *퇴직자리스트</a></div>
</div>
</div>

<!-- 우 -->
<div id = "right" style="display:block; float:left; padding:15px;">
<div><h4>>> 기타코드등록</h4></div>
<br>
<div>
<table border= '1' cellspacing='1' cellpadding='0' align = 'center'>
<tr height = '30' style = "background: #D9E5FF;">
	<th width = '300'>자격.면허</th>
	<th width = '300'>외국어</th>
	<th width = '300'>입사구분</th>
	<tr>
	<td align = 'center'><input type = "button" value = "등록" onclick="location.href=''"></td>
	<td align = 'center'><input type = "button" value = "등록" onclick="location.href=''"></td>
	<td align = 'center'><input type = "button" value = "등록" onclick="location.href=''"></td>
	</tr>
</table><br><br>

<table border= '1' cellspacing='1' cellpadding='0' align = 'center'>
<tr height = '30' style = "background: #D9E5FF;">
	<th width = '300'>직위.직급</th>
	<th width = '300'>직책</th>
	<tr>
	<td align = 'center'><input type = "button" value = "등록" onclick="location.href=''"></td>
	<td align = 'center'><input type = "button" value = "등록" onclick="location.href=''"></td>
	</tr>
</table>
</div>
</div>


</div>
</body>
</html>
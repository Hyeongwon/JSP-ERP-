<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="pro.PerEntity"%>
<head>

<%@page import = "java.util.*, pro.PayEntity" %>
<jsp:useBean id="list_pay" scope="request" class = "java.util.ArrayList"/>

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
<div style = "display:block; padding :5px;"><a href = "pay_control.jsp?action=pay_add_form">&nbsp; *급여계산</a></div>
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
<div><h4>>> 급여계산</h4></div><hr><br>
<form name = 'form1' method="POST" action = "pay_control.jsp?action=pay_add">
<div id="contents">
   <table border="1" cellspacing="1" cellpadding="0" align="center">
       <tr>
         <th id="th1" colspan="" width = 200px height = 30px style = "background: #D9E5FF;">귀속연월</th>
         <td>
   <span id="lblPDate1">
   <span id="ECDateTimeServer1">
   <select name="year1" id="ddlPYear">
	<option value="2015">2015</option>
	<option selected="selected" value="2014">2014</option>
	<option value="2013">2013</option>
	<option value="2012">2012</option>
	<option value="2011">2011</option>
	<option value="2010">2010</option>

</select><select name="month1" id="ddlPMonth">
	<option value="01">1월</option>
	<option value="02">2월</option>
	<option value="03">3월</option>
	<option value="04">4월</option>
	<option value="05">5월</option>
	<option value="06">6월</option>
	<option value="07">7월</option>
	<option value="08">8월</option>
	<option value="09">9월</option>
	<option value="10">10월</option>
	<option value="11">11월</option>
	<option selected="selected" value="12">12월</option>

</select>
</span>
                
    (급여차수<select name="Pay_Group" id="ddlPayGroup">
	<option value="1">1</option>
	<option value="2">2</option>
	<option value="3">3</option>
	<option value="4">4</option>
	<option value="5">5</option>

</select>)
                </span>
                <span id="lblPDate2"></span>
            </td>
</tr>
         
        <tr>
          <th id="th3" colspan="" style = "background: #D9E5FF;">세금계산</th>
          <td>
<select name="ddlTaxCalc" id="ddlTaxCalc" onchange="ChangeTaxCalc();">
	<option value="0">귀속년월이 동일한 것 합산하여 소득세등 계산</option>
	<option value="1">이번 지급사항만 가지고 소득세등 계산</option>

</select>
</td>
</tr>
        <tr>
          <th id="th4" colspan="" style = "background: #D9E5FF;">대상기간</th>
          <td>
          <input type = "date" name = "year2">~
			<input type = "date" name = "year2-1">	
          </td>
        </tr>
        <tr>
          <th id="th5" colspan="" style = "background: #D9E5FF;">지급일</th>
          <td>
     <input type = "date" name = "year3">
 </td>
        </tr>
        <tr>
        
          <th id="th6" colspan="" style = "background: #D9E5FF;">지급연월</th>
           <td>
                <span id="lblPDate1">
                <span id="ECDateTimeServer1">
                <select name="year4" id="ddlPYear">
	<option value="2015">2015</option>
	<option selected="selected" value="2014">2014</option>
	<option value="2013">2013</option>
	<option value="2012">2012</option>
	<option value="2011">2011</option>
	<option value="2010">2010</option>

</select><select name="month4" id="ddlPMonth">
	<option value="01">1월</option>
	<option value="02">2월</option>
	<option value="03">3월</option>
	<option value="04">4월</option>
	<option value="05">5월</option>
	<option value="06">6월</option>
	<option value="07">7월</option>
	<option value="08">8월</option>
	<option value="09">9월</option>
	<option value="10">10월</option>
	<option value="11">11월</option>
	<option selected="selected" value="12">12월</option>

</select>
</span>
                
                </span>
                <span id="lblPDate2"></span>
                <span id="lblModifyFlag" style="display:none;">(<input name="cbModifyFlag" type="checkbox" id="cbModifyFlag" value="N">확정)</span>
            </td>
        </tr>
        <tr>
          <th id="th8" colspan="" style = "background: #D9E5FF;">급여명세서<br>하단</th>
          <td><input name="txtPayComment" type="text" value="※수고하셨습니다" maxlength="100" id="txtPayComment" class="default" style="width:200px;"></td>

        </tr>
    </table>    
  </div>
  <input type = "submit" value = "저장">
</form>
</div>
</div>
</body>
</html>
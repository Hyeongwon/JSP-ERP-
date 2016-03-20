<%@page import="pro.PayrollEntity"%>
<%@page import="pro.PerEntity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%@page import = "java.util.*, pro.PayrollEntity, pro.Pay_total_list" %>
<jsp:useBean id="list_pay" scope="request" class = "java.util.ArrayList"/>
<jsp:useBean id="total_list" scope="request" class = "java.util.ArrayList"/>
<jsp:useBean id="pre" scope="request" class = "pro.PayrollEntity"/>

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
<div align = 'center'><h2><%=pre.getPayroll_name() %></h2></div><br><br>
<div align = left>회사명 : (주)ECount</div><div align = 'right'>지급일자 : <%=pre.getPayroll_day() %></div>
<div>
<script>

function open_win(num){

 window.open('pay_extra.jsp?id='+num,"수당입력","width=400,height=500,left=800,top=300");

}
function extra(e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, sum, id) {
	form1.extra11.value = e1;
	form1.extra21.value = e2;
	form1.extra31.value = e3;
	form1.extra41.value = e4;
	form1.extra51.value = e5;
	form1.extra61.value = e6;
	form1.extra71.value = e7;
	form1.extra81.value = e8;
	form1.extra91.value = e9;
	form1.extra101.value = e10;
	
	var sum1 = parseInt(form1.sum1.value);
	var real_sum = sum + sum1;
	var de_sum = 0;
	form1.sum1.value = sum + sum1;
	
	if(real_sum > 25000000) {
		form1.deduct11.value = real_sum*0.031 + (7580000/12);
		de_sum = real_sum*0.031 + (7580000/12);
	}
	else if(7330000 < real_sum && real_sum1 <=25000000) {
		form1.deduct11.value = real_sum*0.029 + (1250000/12);
		de_sum = real_sum*0.029 + (1250000/12);
	}
	else if(3830000 < real_sum && real_sum <= 7330000 ) {
		form1.deduct11.value = real_sum*0.02 + (485000/12);
		de_sum = real_sum*0.02 + (485000/12);
	}
	else if(1000000 < real_sum && real_sum <=3830000) {
		form1.deduct11.value = real_sum * 0.0125 + (60000/12);
		de_sum = real_sum * 0.0125 + (60000/12);
	}
	else if(sum1 <= 1000000) {
		form1.deduct11.value = real_sum * 0.005;
		de_sum = real_sum * 0.005;
	}
	form1.deduct21.value = (real_sum * 0.0125 + (60000/12))/10;
	de_sum = de_sum + (real_sum * 0.005)/10;
	form1.deduct31.value = real_sum*0.045;
	de_sum = de_sum + real_sum*0.045;
	form1.deduct41.value = real_sum * 0.03;
	de_sum = de_sum + real_sum * 0.03;
	form1.deduct51.value = real_sum * 0.0325;
	de_sum = de_sum + real_sum * 0.03;
	form1.deduct61.value = real_sum * 0.0065;
	form1.deduct71.value = 0;
	form1.deduct81.value = 0;
	form1.deduct91.value = 0;
	form1.deduct101.value = 0;
	form1.deduct111.value = 0;
	form1.deduct121.value = de_sum;
	form1.deduct131.value = real_sum - de_sum;
	form1.lol1.value = 1;
}

</script>
<form name = form1>
<table border= '1' cellspacing='1' cellpadding='0' align = 'center'>
<thead>
<tr style = "background: #D9E5FF;">
<th width="80">이름</th>
<th width="104" colspan="2">기본급</th>
<th width="104">야근수당</th>
<th width="104">연장수당</th>
<th width="104" colspan="2">월차수당</th>
<th width="104">연차수당</th>
<th width="78">소득세</th>
<th width="78">주민세</th>
<th width="78">국민연금</th>
<th width="78">건강보험</th>
<th width="78">장기요양</th>
</tr>
<tr style = "background: #D9E5FF;">
<th width="80">사번</th>
<th width="104" colspan="2">식대</th>
<th width="104">차량유지비</th>
<th width="104">보육수당</th>
<th width="104" colspan="2">연구수당</th>
<th width="104">통신비</th>
<th width="78">고용보험</th>
<th width="78"></th>
<th width="78">기타공제</th>
<th width="78">사우회비</th>
<th width="78">공제항목20개까지</th>
</tr>
<tr style = "background: #D9E5FF;">
<th width="80">직급</th>
<th width="104" colspan="2">시간외수당</th>
<th width="104">근태공제</th>
<th width="104">수당항목30개까지</th>
<th width="104" colspan="2">인센티브</th>
<th width="104">상여</th>
<th width="78">&nbsp;</th>
<th width="78">&nbsp;</th>
<th width="78">&nbsp;</th>
<th width="78"><strong>공제총액</strong></th>
<th width="78"><strong>실지급액</strong></th>
</tr>
<tr class="bottom_line" style = "background: #D9E5FF;">
<th width="80">&nbsp;</th>
<th width="104" colspan="2">&nbsp;</th>
<th width="104">&nbsp;</th>
<th width="104">&nbsp;</th>
<th width="104" colspan="2">&nbsp;</th>
<th width="104"><strong>지급총액</strong></th>
<th width="78">&nbsp;</th>
<th width="78">&nbsp;</th>
<th width="78">&nbsp;</th>
<th width="78">&nbsp;</th>
<th width="78">&nbsp;</th>
</tr>
</thead>
<%
	int num = 0;
	int cnt = 0;
	for(Pay_total_list ptl : (ArrayList<Pay_total_list>)total_list) {
		num = ptl.getBasepay();
		cnt++;
%>
<tr>
<td width="80" class="left"><%=ptl.getEmployee_name() %><br></td>
<td width="104" colspan="2" class="right"><%=ptl.getBasepay() %></td>
<td width="104" class="right"><input type = 'text' name = "extra1<%=cnt %>" size = 5;></td>
<td width="104" class="right"><input type = 'text' name = "extra2<%=cnt %>" size = 5;></td>
<td width="104" colspan="2" class="right"><input type = 'text' name = "extra3<%=cnt %>" size = 5;></td>
<td width="104" class="right"><input type = 'text' name = "extra4<%=cnt %>" size = 5;></td>
<td width="78" class="right"><input type = 'text' name = "deduct1<%=cnt %>" size = 5;></td><!-- 소득세 -->
<td width="78" class="right"><input type = 'text' name = "deduct2<%=cnt %>" size = 5;></td><!-- 주민세 -->
<td width="78" class="right"><input type = 'text' name = "deduct3<%=cnt %>" size = 5;></td><!-- 국민연금 -->
<td width="78" class="right"><input type = 'text' name = "deduct4<%=cnt %>" size = 5;></td><!-- 건강보험 -->
<td width="78" class="right"><input type = 'text' name = "deduct5<%=cnt %>" size = 5;></td><!-- 장기요양 -->
</tr>
<tr>
<td width="80" class="left" style="backgroung-color:#000">
<a onclick="open_win(<%=cnt%>)"><%=ptl.getEmployee_num() %></a>
</td>
<td width="104" colspan="2" class="right"><input type = 'text' name = "extra5<%=cnt %>" size = 5;></td>
<td width="104" class="right"><input type = 'text' name = "extra6<%=cnt %>" size = 5;></td>
<td width="104" class="right"><input type = 'text' name = "extra7<%=cnt %>" size = 5;></td>
<td width="104" colspan="2" class="right"><input type = 'text' name = "extra8<%=cnt %>" size = 5;></td>
<td width="104" class="right"><input type = 'text' name = "extra9<%=cnt %>" size = 5;></td>
<td width="78" class="right"><input type = 'text' name = "deduct6<%=cnt %>" size = 5;></td><!-- 고용보험 -->
<td width="78" class="right">&nbsp;</td><!-- 빈칸 -->
<td width="78" class="right"><input type = 'text' name = "deduct7<%=cnt %>" size = 5;></td><!-- 기타공제 -->
<td width="78" class="right">50000</td><!-- 사우회비 -->
<td width="78" class="right"><input type = 'text' name = "deduct8<%=cnt %>" size = 5;></td><!-- 공제항목20개 -->
</tr>
<tr>
<td width="80" class="left"><%=ptl.getRank() %></td>
<td width="42" class="right"><input type = 'text' name = "lol<%=cnt %>" size = 5;></td>
<td width="62" class="right"><input type = 'text' name = "extra10<%=cnt %>" value = "" size = 5;></td>
<td width="104" class="right"></td><!-- 근태공제 -->
<td width="104" class="right"><input type = 'text' name = "deduct9<%=cnt %>" size = 5;></td><!-- 수당항목 20개 -->
<td width="62" class="right"><input type = 'text' name = "deduct10<%=cnt %>" size = 5;></td><!-- 인센티브 -->
<td width="104" class="right"><input type = 'text' name = "deduct11<%=cnt %>" size = 5;></td><!-- 상여 -->
<td width="78" class="right">&nbsp;</td><!-- 빈칸 -->
<td width="78" class="right">&nbsp;</td><!-- 빈칸 -->
<td width="78" class="right">&nbsp;</td><!-- 빈칸 -->
<td width="78" class="right">&nbsp;</td><!-- 공제총액 -->
<td width="78" class="right">&nbsp;</td><!-- 실지급액 -->
</tr>
<tr class="bottom_line"><td width="80" class="left">&nbsp;</td>
<td width="104" colspan="2" class="right">&nbsp;</td><!-- 빈칸 -->
<td width="104" class="right">&nbsp;</td><!-- 빈칸 -->
<td width="104" class="right">&nbsp;</td><!-- 빈칸 -->
<td width="104" colspan="2" class="right">&nbsp;</td><!-- 빈칸 -->
<td width="104" class="right"><strong><input type = "text" name = "sum<%=cnt%>" value = <%=num %>></strong></td><!-- 지급총액 -->
<td width="78" class="right">&nbsp;</td>
<td width="78" class="right">&nbsp;</td>
<td width="78" class="right">&nbsp;</td>
<td width="78" class="right"><strong><input type = 'text' name = "deduct12<%=cnt %>" size = 5;></strong></td>
<td width="78" class="right"><strong><input type = 'text' name = "deduct13<%=cnt %>" size = 5;></strong></td>
</tr>
<%
	}
%>
</table>
</form>
</div>
</div>


</div>
</body>
</html>
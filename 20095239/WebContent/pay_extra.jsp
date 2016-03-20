<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
 <script language="javascript">
<% 
request.setCharacterEncoding("utf-8");

String id = request.getParameter("id");

%>
function use(id)
 {
 	var sum = 0;
  var e1 = parseInt(form1.extra1.value);
  var e2 = parseInt(form1.extra2.value);
  var e3 = parseInt(form1.extra3.value);
  var e4 = parseInt(form1.extra4.value);
  var e5 = parseInt(form1.extra5.value);
  var e6 = parseInt(form1.extra6.value);
  var e7 = parseInt(form1.extra7.value);
  var e8 = parseInt(form1.extra8.value);
  var e9 = parseInt(form1.extra9.value);
  var e10 = parseInt(form1.extra10.value);
  var sum = e1 + e2 + e3 + e4 + e5 + e6 + e7 + e8 + e9 + e10;
  window.opener.extra(e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, sum, id);
  window.close();
 }

 </script>
 </head>
 <body>
<form name = "form1">
<div align = "center">
<table border= '1' cellspacing='1' cellpadding='0' width = '300'>
<tr>
<td width = 100 style = "background: #D9E5FF;">야근수당</td>
<td width = 150><input type = "text" name = "extra1" value = "0"></td>
</tr>
<tr>
<td width = 100 style = "background: #D9E5FF;">연장수당</td>
<td width = 150><input type = "text" name = "extra2" value = "0"></td>
</tr>
<tr>
<td width = 100 style = "background: #D9E5FF;">월차수당</td>
<td width = 150><input type = "text" name = "extra3" value = "0"></td>
</tr>
<tr>
<td width = 100 style = "background: #D9E5FF;">연차수당</td>
<td width = 150><input type = "text" name = "extra4" value = "0"></td>
<tr>
<td width = 100 style = "background: #D9E5FF;">식대</td>
<td width = 150><input type = "text" name = "extra5" value = "0"></td>
</tr>
<tr>
<td width = 100 style = "background: #D9E5FF;">차량유지비</td>
<td width = 150><input type = "text" name = "extra6" value = "0"></td>
</tr>
<tr>
<td width = 100 style = "background: #D9E5FF;">보육수당</td>
<td width = 150><input type = "text" name = "extra7" value = "0"></td>
</tr>
<tr>
<td width = 100 style = "background: #D9E5FF;">연구수당</td>
<td width = 150><input type = "text" name = "extra8" value = "0"></td>
</tr>
<tr>
<td width = 100 style = "background: #D9E5FF;">통신비</td>
<td width = 150><input type = "text" name = "extra9" value = "0"></td>
</tr>
<tr>
<td width = 100 style = "background: #D9E5FF;">시간외수당</td>
<td width = 150><input type = "text" name = "extra10" value = "86600"></td>
</tr>
</table>
<input type = 'button' value = "확인" onclick="use(<%=id%>)">
</div>
</form>
</body>
 </html>
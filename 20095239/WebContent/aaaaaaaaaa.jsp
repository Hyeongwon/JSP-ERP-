<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
 <script language="javascript">

function calc()
 {
  var temp = 0;
  if(form1.a.value){
   temp = temp + parseInt(form1.a.value);
  }
  if(form1.b.value){
   temp = temp + parseInt(form1.b.value); 
  }
  if(form1.c.value){
   temp = temp + parseInt(form1.c.value); 
  }
  if(form1.d.value){
   temp = temp + parseInt(form1.d.value); 
  }
  form1.result.value = temp;
 }

 </script>
 </head>
 <body>
 <form name="form1">
  A : <input type="text" name="a" size="10" onBlur="calc()"></br>
  B : <input type="text" name="b" size="10" onBlur="calc()"></br>
  C : <input type="text" name="c" size="10" onBlur="calc()"></br>
  D : <input type="text" name="d" size="10" onBlur="calc()"></br>
  RESULT : <input type=text name=result size=10  >
 </form>
 </body>
 </html>
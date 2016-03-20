<%@page import="pro.PerEntity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@page import = "java.util.*, pro.CareerEntity, pro.FamilyEntity, pro.SchoolEntity, pro.LanguageEntity, pro.LicenseEntity , pro.PerManager" %>
<% 
request.setCharacterEncoding("utf-8");

String id = request.getParameter("id");
%>
<jsp:useBean id="per_man" class = "pro.PerManager" scope = "page" />
<%
ArrayList<FamilyEntity> fl = per_man.getFamilyList(id);
ArrayList<SchoolEntity> sl = per_man.getSchoolList(id);
CareerEntity cl = per_man.getCareerList(id);
ArrayList<LanguageEntity> ll =  per_man.getLanguageList(id);
ArrayList<LicenseEntity> le = per_man.getLicenseList(id);
PerEntity pe = per_man.getperById(id);
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>사원카드</title>
</head>
<body>
<input type = "button" value = "인쇄" onclick="window.print()"/>&nbsp;
<hr><br>
<div align = center id="contents" style="width:690px;">
    <p class="big3 center"><strong>사 원 카 드</strong></p>
    <p class="H_20px left">(주)가장많이쓰는ERP</p>
    <div class="H_2px left" align = "center" style="border:1px solid #000; padding:5px;">
    
     <table style="width: 100%; padding:0; font-size:12px; border-collapse:collapse; clear:both; border:1px solid #333; margin:0">
       <colgroup><col width="21%"><col width="3%"><col width="10%"><col width="28%">
       <col width="13%"><col width="7%"><col width=""><col width="7%">
          </colgroup><tbody><tr>
            <td rowspan="6" style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center"><img id="imgEmpPhoto" src="photo_none2.gif" style="height:150px;width:140px;"></td>
            <th colspan="2" style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6"><strong>입사일자</strong></th>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"><%=pe.getJoined_date() %></td>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6"><strong>주민등록번호</strong></th>
            <td colspan="2" style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"><%=pe.getRRnum() %></td>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6"><strong>성별</strong></th>
          </tr>
          <tr>
            <th colspan="2" style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6"><strong>부서</strong></th>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"><%=pe.getDepart_code() %></td>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6"><strong>성명</strong></th>
            <td colspan="2" style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"><%=pe.getEmployee_name() %></td>
            <td rowspan="2" style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center"><%=pe.getSex() %></td>
          </tr>
          <tr>
            <th colspan="2" style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6"><strong>Email</strong></th>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"><%=pe.getEmail() %></td>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6"><strong>여권번호</strong></th>
            <td colspan="2" style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"><%=pe.getPassport_num() %></td>
          </tr>
          <tr>
            <th rowspan="3" style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6"><strong>주<br><br>소</strong></th>
            <th style="height:26px; font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">주민등록상</th>
            <td colspan="2" class="font_s" style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">(<%=pe.getZip_code() %>)<%=pe.getAddress() %></td>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">연락처</th>
            <td colspan="2" style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"><%=pe.getMobile1() %></td>
          </tr>
          <tr>
            <th rowspan="2" style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">실거주지</th>
            <td colspan="2" rowspan="2" class="font_s" style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; word-break:break-all; word-wrap: break-word; ">(<%=pe.getZip_code() %>)<%=pe.getAddress() %></td>
            <th rowspan="2" style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">연락처</th>
            <td colspan="2" style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:3px 2px 2px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">T. <%=pe.getMobile1() %></td>
          </tr>
          <tr>
            <td colspan="2" style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:3px 2px 2px 2px; word-break:break-all; word-wrap: break-word;">H.<%=pe.getMobile2()%></td>
          </tr>
        </tbody></table>
        
     <table style="width: 100%; padding:0; font-size:12px; margin:6px 0 0 0; border-collapse:collapse; clear:both; border:1px solid #333;">
       <colgroup><col width="5%"><col width="10%"><col width="8%"><col width="12%">
       <col width="10%"><col width="15%"><col width="10%"><col width=""><col width="9%">
          </colgroup><tbody><tr>
            <th rowspan="6" style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6"><strong>가<br><br>족</strong></th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">성명</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">관계</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">생년월일</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">직 업</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">회사명</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">직위</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">최종학력</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">동거여부</th>
          </tr>
          <%
	for(FamilyEntity fe : fl) {
%>

		<tr align = 'center'>
		<td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"><%=fe.getFamily_name() %></td>
		<td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"><%=fe.getRelation()%></td>
		<td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"><%=fe.getBirthday() %></td>
		<td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"><%=fe.getJob() %></td>
		<td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"><%=fe.getCompany_name() %></td>
		<td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"><%=fe.getPosition() %></td>
		<td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"><%=fe.getLevel_education() %></td>
		<td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"><%=fe.getSupport() %></td>
		</tr>
<%
	}
%>       
        </tbody></table>
        
     <table style="width: 100%; padding:0; font-size:12px; margin:6px 0 0 0; border-collapse:collapse; clear:both; border:1px solid #333;">
       <colgroup><col width="5%"><col width="18%"><col width="14%"><col width="13%">
       <col width="5%"><col width="18%"><col width="14%"><col width="">
          </colgroup><tbody><tr>
            <th rowspan="2" style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6"><strong>국민건강보험</strong></th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">기호 번호</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">취득일</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">상실일</th>
            <th rowspan="2" style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; padding:5px 2px 6px 2px; border-right:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6"><strong>국민<br>연금</strong></th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">기호 번호</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">취득일</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">상실일</th>
          </tr>
          <tr>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;</td>
          </tr>
        </tbody></table>
        
     <table style="width: 100%; padding:0; font-size:12px; margin:6px 0 0 0; border-collapse:collapse; clear:both; border:1px solid #333;">
       <colgroup><col width="5%"><col width="25%"><col width="20%">
       <col width="15%"><col width="12%"><col width="11%"><col width="">
          </colgroup><tbody><tr>
            <th rowspan="4" style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6"><strong>학<br><br>력</strong></th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">기 간</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">학교명</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">전 공</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">이수구분</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">소재지</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">기 타</th>
          </tr>
          <%
	for(SchoolEntity se : sl) {
%>

		<tr align = 'center'>
		<td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center"><%=se.getEducation_date() %> ~ <%=se.getGraduation_date() %></td>
		<td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"><%=se.getEducation_name() %></td>
		<td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"><%=se.getClassfication() %></td>
		<td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"><%=se.getEducation() %></td>
		<td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"><%=se.getLocation() %></td>
		<td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"></td>
		</tr>
<%
	}
%>
    </tbody></table>  
        
     <table style="width: 100%; padding:0; font-size:12px; margin:6px 0 0 0; border-collapse:collapse; clear:both; border:1px solid #333;">
       <colgroup><col width="5%"><col width="25%"><col width="20%">
       <col width="15%"><col width="9%"><col width="">
          </colgroup><tbody><tr>
            <th rowspan="4" style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6; line-height:1.5em;"><strong>경<br>력<br>사<br>항</strong></th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">기 간</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">회사명</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">담당업무(부서)</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">직 위</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">퇴사사유</th>
          </tr>
          
          <tr>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center"><%=cl.getCareer_joined() %></td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"><%=cl.getCompany_name() %></td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"><%=cl.getDepart() %></td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"><%=cl.getDuty() %></td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"><%=cl.getReason() %></td>
          </tr>       
        </tbody></table>
        
     <table style="width: 100%; padding:0; font-size:12px; margin:6px 0 0 0; border-collapse:collapse; clear:both; border:1px solid #333;">
       <colgroup><col width="5%"><col width="13%"><col width="5%">
       <col width="5%"><col width="5%"><col width="17%">
       <col width="5%"><col width="15%"><col width="8%">
       <col width="5%"><col width="5%"><col width="">
          </colgroup><tbody><tr>
            <th rowspan="4" style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6; line-height:1.5em;"><strong>어<br>학<br>능<br>력</strong></th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">외국어명</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">시행처</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">점수</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">자격증</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">기타</th>
            <th rowspan="4" style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6; line-height:1.5em;"><strong>자<br>격<br>면<br>허</strong></th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">종류/등급</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">취득년월</th>
            <th rowspan="4" style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6"><strong>병<br><br>역</strong></th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">구분</th>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">기타</td>
          </tr>
          <%
	for(LanguageEntity le1 : ll) {
%>

		<tr align = 'center'>
		<td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;<%=le1.getLanguage_name() %></td>
		<td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;<%=le1.getLanguage_operated() %></td>
		<td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;<%=le1.getLanguage_score() %></td>
		<td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;<%=le1.getLanguage() %></td>
		<td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
<%
	}
%>
<%
	for(LicenseEntity le1 : le) {
%>

		<td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;<%=le1.getLicense_name() %></td>
		<td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;<%=le1.getGet_date() %></td>
<%
	}
%>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">군별</th>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"></td>
          </tr>
          <tr>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;</td>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">계급</th>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"></td>
          </tr>
          <tr>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;</td>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">사유</th>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; word-break:break-all; word-wrap: break-word;"></td>
          </tr>
        </tbody></table>
        
     <table style="width: 100%; padding:0; font-size:12px; margin:6px 0 0 0; border-collapse:collapse; clear:both; border:1px solid #333;">
       <colgroup><col width="5%"><col width="9%"><col width="14%"><col width="8%"><col width="14%">
       <col width="5%"><col width="9%"><col width="14%"><col width="8%"><col width="">
          </colgroup><tbody><tr>
            <th rowspan="3" style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6; line-height:1.5em;"><strong>추<br>천<br>인</strong></th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">성명</th>
            <td colspan="3" style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"></td>
            <th rowspan="3" style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6; line-height:1.5em;"><strong>보<br>증<br>인<br>1</strong></th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">성명</th>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"></td>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">관 계</th>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"></td>
          </tr>
          <tr>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">회 사</th>
            <td colspan="3" style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"></td>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">주  소</th>
            <td colspan="3" class="font_s" style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"></td>
          </tr>
          <tr>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">관 계</th>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"></td>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">연락처</th>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"></td>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">연락처</th>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"></td>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">재 산</th>
            <td class="font_s" style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right; "></td>
          </tr>
          
          <tr>
            <th rowspan="3" style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6; line-height:1.5em"><strong>보<br>증<br>보<br>험</strong></th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">보험사</th>
            <td colspan="3" style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"></td>
            <th rowspan="3" style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6; line-height:1.5em;"><strong>보<br>증<br>인<br>2</strong></th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">성명</th>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"></td>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">관 계</th>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"></td>
          </tr>
          <tr>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">보증기간</th>
            <td colspan="3" style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"></td>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">주  소</th>
            <td colspan="3" class="font_s" style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"></td>
          </tr>
          <tr>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">보험번호</th>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; word-break:break-all; word-wrap: break-word;"></td>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">보험료</th>
            <td class="font_s" style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right;"></td>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999;  word-break:break-all; word-wrap: break-word; background: #eef1f6">연락처</th>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; border-right:1px solid #999; word-break:break-all; word-wrap: break-word;"></td>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:5px 2px 6px 2px; border-right:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">재 산</th>
            <td class="font_s" style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:5px 2px 6px 2px; word-break:break-all; word-wrap: break-word; text-align:right;"></td>
          </tr>
        </tbody></table>
    </div>
    <div style="page-break-before: always;"><!--[if IE 7]><br style="height:0; line-height:0"><![endif]--><!--[if IE 8]><br style="height:0; line-height:0"><![endif]--></div>
    <!-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
    <div class="left" style="border:1px solid #000; padding:5px; margin-top:54px;">
     <table style="width: 100%; padding:0; font-size:12px; border-collapse:collapse; clear:both; border:1px solid #333; margin:0">
     
       <colgroup><col width="15%"><col width="15%"><col width="54%"><col width="">
         </colgroup><tbody><tr>
           <td class="big1 center" colspan="4" style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">발 령 사 항</td>
         </tr>
          <tr>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">발령일자</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">발령구분</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">발령내용</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:4px 2px 4px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">적요</th>
          </tr>
          
          <tr>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">2014.09.03</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">승진</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">경영지원팀[과장] → 생산팀[차장]</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"></td>
          </tr>
          
          <tr>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"></td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
          </tr>
          
          <tr>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"></td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
          </tr>
          
          <tr>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"></td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
          </tr>
          
          <tr>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"></td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
          </tr>
          
          <tr>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"></td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
          </tr>
          
          <tr>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;"></td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
          </tr>
          
        </tbody></table>
        
     <table style="width: 100%; padding:0; font-size:12px; margin:6px 0 0 0; border-collapse:collapse; clear:both; border:1px solid #333;">
     
       <colgroup><col width="15%"><col width="15%"><col width="54%"><col width="">
         </colgroup><tbody><tr>
           <td class="big1" colspan="4" style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">상 벌 사 항</td>
         </tr>
          <tr>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">일 자</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">상벌구분</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">상벌내용</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:4px 2px 4px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">시행처</th>
          </tr>
          
          <tr>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
          </tr>
          
          <tr>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
          </tr>
          
          <tr>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
          </tr>
          
          <tr>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
          </tr>
          
          <tr>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
          </tr>
          
        </tbody></table>
        
     <table style="width: 100%; padding:0; font-size:12px; margin:6px 0 0 0; border-collapse:collapse; clear:both; border:1px solid #333;">
     
       <colgroup><col width="24%"><col width="20%"><col width="40%"><col width="">
         </colgroup><tbody><tr>
           <td class="big1" colspan="4" style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">교 육 훈 련 [연 수]</td>
         </tr>
          <tr>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">기 간</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">교육기관</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">교육내용</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:4px 2px 4px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">비고</th>
          </tr>
          
          <tr>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
          </tr>
          
          <tr>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
          </tr>
          
          <tr>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
          </tr>
          
          <tr>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
          </tr>
          
          <tr>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
          </tr>
          
        </tbody></table>
        
     <table style="width: 100%; padding:0; font-size:12px; margin:6px 0 0 0; border-collapse:collapse; clear:both; border:1px solid #333;">
     
       <colgroup><col width="24%"><col width="20%"><col width="">
         </colgroup><tbody><tr>
           <td class="big1" colspan="3" style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">출 장 사 항</td>
         </tr>
          <tr>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">기 간</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">출장지</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:4px 2px 4px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">목 적</th>
          </tr>
          
          <tr>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
          </tr>
          
          <tr>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
          </tr>
          
          <tr>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
          </tr>
          
          <tr>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
          </tr>
          
          <tr>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
          </tr>
          
        </tbody></table>
        
     <table style="width: 100%; padding:0; font-size:12px; margin:6px 0 0 0; border-collapse:collapse; clear:both; border:1px solid #333;">
     
       <colgroup><col width="12%"><col width="12%"><col width="12%"><col width="8%"><col width="8%">
       <col width="8%"><col width="8%"><col width="8%"><col width="8%"><col width="">
         </colgroup><tbody><tr>
           <td class="big1" colspan="10" style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">근 무 실 태</td>
         </tr>
          <tr>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">년</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">총휴가일수</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">사용<br>휴가일수</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">연 가</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">경 조</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">특 별</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">병 가</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">조 퇴</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">기 타</th>
            <th style="font-family: dotum, Arial, Tahoma; font-weight:normal; text-align:center; color:#036; line-height:1.0em; 	padding:4px 2px 4px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; background: #eef1f6">비고</th>
          </tr>
          
          <tr>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
          </tr>
          
          <tr>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
          </tr>
          
          <tr>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
          </tr>
          
          <tr>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
          </tr>
          
          <tr>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:center">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-right:1px solid #999; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word; text-align:right">&nbsp;</td>
            <td style="font-family: dotum, Arial, Tahoma; line-height:110%; padding:4px 2px 4px 2px; border-bottom:1px solid #999; word-break:break-all; word-wrap: break-word;">&nbsp;</td>
          </tr>
          
        </tbody></table>
    </div>
   
 </div>
</body>
</html>
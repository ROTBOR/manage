<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<body style="background-image:url(img/2.jpg); background-size:100%,100%">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教师成绩管理</title>
<link rel="stylesheet" href="css/dataTable.css" type="text/css">
<style type="text/css">
body, th, td { font-family: Arial, Verdana, sans-serif; font-size: 0.9em; }
a:link{text-decoration: none;}
a:hover, a:active, a:focus { color: #000000;text-decoration: underline; }
table.dataTable tr.marked { background-color: #FFD900; }
.color h1{color:#E56600;text-align:center;font-weight: bold;}
.color h3{font-family:simsun}
</style>
</head>
<body>
<%String sno = session.getAttribute("sno").toString(); %>
<font style="color:Indigo;font-size:x-large">Welcome,<%=session.getAttribute("sname")%></font>
<div style ="text-align: center;">
	<font style="color:black;font-size:24px;font-family:'宋体'">我的课程成绩</font>
</div><br />
<div style ="text-align:center;">
	<strong>筛选：</strong>
	<select onchange="window.location=this.value;">
		<option>按学年学期</option>
		<option value="${pageContext.request.contextPath }/findScoreByTerm.do?sno=<%=sno%>&term=20161">2016-2017学年第一学期</option>
		<option value="${pageContext.request.contextPath }/findScoreByTerm.do?sno=<%=sno%>&term=20162">2016-2017学年第二学期</option>
		<option value="${pageContext.request.contextPath }/findScoreByTerm.do?sno=<%=sno%>&term=20171">2017-2018学年第一学期</option>
		<option value="${pageContext.request.contextPath }/findScoreByTerm.do?sno=<%=sno%>&term=20172">2017-2018学年第二学期</option>
	</select>&nbsp;&nbsp;<a href="${pageContext.request.contextPath }/findScoreBySno.do?sno=<%=sno%>">取消筛选</a>
</div>
<table border="0" cellspacing="0" cellpadding="0" class="dataTable">
    <tr>
      <th class="dataTableHeader">学期</th>
      <th class="dataTableHeader">课程号</th>
	  <th class="dataTableHeader">课程名称</th>
	  <th class="dataTableHeader">学时</th>
	  <th class="dataTableHeader">学分</th>
	  <th class="dataTableHeader">修习类别</th>
	  <th class="dataTableHeader">考试性质</th>
	  <th class="dataTableHeader">成绩</th>
    </tr>
<c:forEach items="${list}" var="score">
<tr class="odd_row">
   <td>${score.term}</td>
   <td>${score.cno}</td>
   <td>${score.cname}</td>
   <td>${score.ctime}</td>
   <td>${score.credit}</td>
   <td>${score.type}</td>
   <td>${score.state}</td>
   <td>${score.grade}</td>
</tr>
</c:forEach>
   
</table>

</body>
</html>
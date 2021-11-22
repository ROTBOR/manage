<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<table border="0" cellspacing="0" cellpadding="0" class="dataTable">
  <thead>
    <tr>
      <th class="dataTableHeader">学号</th>
      <th class="dataTableHeader">开课班级号</th>
      <th class="dataTableHeader">课程名</th>
	  <th class="dataTableHeader">学分</th>
	  <th class="dataTableHeader">类型</th>
	  <th class="dataTableHeader">状态</th>
	  <th class="dataTableHeader">添加</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${list}" var="score">
    <tr class="odd_row">
   <td>${score.sno}</td>
   <td>${score.cou_classno}</td>
   <td>${score.cname}</td>
   <td>${score.credit}</td>
   <td>${score.type}</td>
   <td>${score.state}</td>
   <td><a href="${pageContext.request.contextPath }/findScoreTeacher.do?sno=${score.sno}&&cou_classno=${score.cou_classno}">点击添加成绩</a></td>
    </tr>
  </c:forEach>
  </tbody>
</table>

</body>
</html>
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
<table border="0" cellspacing="0" cellpadding="0" class="dataTable">
  <thead>
    <tr>
      <th class="dataTableHeader">开课班级号</th>
      <th class="dataTableHeader">平均成绩</th>
      <th class="dataTableHeader">开课班级总人数</th>
	  <th class="dataTableHeader">通过人数</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${list}" var="list">
    <tr class="odd_row">
   <td>${list.cou_classname}</td>
   <td>${list.avg_grade}</td>
   <td>${list.number}</td>
   <td>${list.pass}</td>
    </tr>
  </c:forEach>
  </tbody>
</table>

</body>
</html>
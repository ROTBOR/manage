<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
a:link{text-decoration: none;}
a:visited{color:#0066cc;}
a:hover, a:active, a:focus { color: #000000;text-decoration: underline; }
</style>
<body style="background-image:url(img/2.jpg); background-size:100%,100%">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body style="text-align:center">
<font style="color:Indigo;font-size:x-large">Welcome,${dean.dean_name}</font>
<table border="0" width="900px" height="200px" align="center">
<tr>
<td><a href="${pageContext.request.contextPath }/findAllScore.do">点击显示所有学生成绩</a></td>
<td><a href="${pageContext.request.contextPath }/findNull.do">点击显示未安排老师的课程</a></td>
</tr>
<tr>
<td><a href="${pageContext.request.contextPath }/findNotNull.do">点击显示已安排老师的课程</a></td>
<td><a href="${pageContext.request.contextPath }/showReportTable.do">点击各个班级报表</a></td>
</tr>
<tr>
<td><a href="dean_find.jsp">点击显示筛选学生成绩</a></td>
<td></td>
</tr>
</table>
</body>
</html>
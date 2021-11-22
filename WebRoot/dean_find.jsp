<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<body style="background-image:url(img/2.jpg); background-size:100%,100%">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>查询学生</title>
</head>
<body>
<h2>查询学生-输入学号查询</h2>
<form action="${pageContext.request.contextPath}/findLike.do"
  method="post">
学号：<input type="text" name="sno"/>
<input type="submit" value="查询"/>
</form>
</body>
</html>
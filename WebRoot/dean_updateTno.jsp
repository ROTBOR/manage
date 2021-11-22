<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>为没有教师的开课班级添加教师</title>
</head>
<body>
<body style="background-image:url(img/2.jpg); background-size:100%,100%">
<form action="${pageContext.request.contextPath }/update_Tno.do"
  method="post">
<table border="2" width="70%" algin="center">
<caption>教师安排页面</caption>
<tr>
      <th>课程号：</th>
      <td>
      <input type="text" name="cno" value="${course.cno}" readonly="true"/></td>
    </tr>
    
    <tr>
      <th>开课班级号：</th><td><input type="text" name="cou_classno" value="${course.cou_classno}" readonly="true"/></td>
    </tr>
    <tr>
      <th>学期：</th><td><input type="text" name="term" value="${course.term}" readonly="true"/></td>
    </tr>
    <tr>
      <th>状态：</th><td><input type="text" name="state" value="${course.state}" readonly="true"/></td>
    </tr>
    <tr> 
      <th>教师号：</th><td><input type="text" name="tno" value="${course.tno}" /></td>
    </tr>
     <tr>
      <th>课程名：</th><td><input type="text" name="cname" value="${course.cname}" readonly="true"/></td>
    </tr>
    <tr>
      <th>学时：</th><td><input type="text" name="ctime" value="${course.ctime}" readonly="true"/></td>
    </tr>
    <tr>
      <th>学分：</th><td><input type="text" name="credit" value="${course.credit}" readonly="true"/></td>
    </tr>
    <tr>
      <th>商品介绍：</th><td><input type="text" name="type" value="${course.type}" readonly="true"/></td>
    </tr>
    <tr>
    <td></td>
    <td><input type="submit" value="确认修改"/></td>
    </tr>
</form>
</body>
</html>
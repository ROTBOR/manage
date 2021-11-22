<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<body style="background-image:url(img/2.jpg); background-size:100%,100%">
<form action="${pageContext.request.contextPath }/update_Grade.do"
  method="post">
<table border="2" width="70%" algin="center">
<caption>教师安排页面</caption>

<tr>
      <th>学生号：</th>
      <td>
      <input type="text" name="sno" value="${score.sno}" readonly="true"/></td>
    </tr>
    
    <tr>
      <th>开课班级号：</th><td><input type="text" name="cou_classno" value="${score.cou_classno}" readonly="true"/></td>
    </tr>
    <tr>
      <th>课程名：</th><td><input type="text" name="cname" value="${score.cname}" readonly="true"/></td>
    </tr>
    <tr>
      <th>学分：</th><td><input type="text" name="credit" value="${score.credit}" readonly="true"/></td>
    </tr>
    <tr> 
      <th>类型：</th><td><input type="text" name="type" value="${score.type}" readonly="true" /></td>
    </tr>
     <tr>
      <th>状态：</th><td><input type="text" name="state" value="${score.state}" readonly="true"/></td>
    </tr>
    <tr>
      <th>平时成绩：</th><td><input type="text" name="usual_score" value="${score.usual_score}" /></td>
    </tr>
    <tr>
      <th>期末成绩：</th><td><input type="text" name="final_score" value="${score.final_score}" /></td>
    </tr>
    <tr>
      <th>总分：</th><td><input type="text" name="grade" value="${score.grade}" /></td>
    </tr>
    <tr>
    <td></td>
    <td><input type="submit" value="确认修改"/></td>
    </tr>
</form>
</body>
</html>
<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<html>
  <head> 
  <body style="background-image:url(img/2.jpg); background-size:100%,100%">
    <title>插入一条记录</title>
  </head>
  
  <body>
  
    <form action="${pageContext.request.contextPath }/insertGrade.do?"
  method="post">
    <table border="2" align="center" width="70%">
    <caption>新增一条成绩记录</caption>
    <tr>
      <th>学号：</th><td><input type="text" name="sno"/></td>
    </tr>
    <tr>
      <th>开课班级号：</th><td><input type="text" name="cou_classno"/></td>
    </tr>
    <tr>
      <th>课程名：</th><td><input type="text" name="cname"/></td>
    </tr>
    <tr>
      <th>学分：</th><td><input type="text" name="credit"/></td>
    </tr>
    <tr>
      <th>类型：</th><td><input type="text" name="type"/></td>
    </tr>
    <tr>
      <th>状态：</th><td><input type="text" name="state"/></td>
    </tr>
    <tr>
      <th>平时成绩：</th><td><input type="text" name="usual_score"/></td>
    </tr>
    <tr>
      <th>期末成绩：</th><td><input type="text" name="final_score"/></td>
    </tr>
    <tr>
      <th>总成绩：</th><td><input type="text" name="grade"/></td>
    </tr>
    <tr>
    <td></td>
    <td><input type="submit" value="提交"/></td>
    </tr>
    </table>
    </form>

  </body>
</html>

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
<body>

<font style="color:Indigo;font-size:x-large">Welcome,${teacher.tname}</font>
<table border="0" width="900px" height="200px" align="center">
<tr>
<td><a href="${pageContext.request.contextPath }/findStuByTno.do?tno=${teacher.tno}">点击显示所授课学生成绩</a></td>
<td><a href="${pageContext.request.contextPath }/findCourseByTno.do?tno=${teacher.tno}">点击显示所有授课</a></td>
</tr>
<tr>
<td><a href="insert_grade.jsp">点击添加学生成绩</a></td>
<td><a href="${pageContext.request.contextPath }/findNullGrade.do?tno=${teacher.tno}">点击显示未添加成绩的学生列表</a></td>
</tr>
</table>
<form action="Teacher_Login_out.do">
        <table>
            <tr>
                <td><input type="submit" value="退出登录"></td>
            </tr>
        </table>
    </form>
</body>
</html>
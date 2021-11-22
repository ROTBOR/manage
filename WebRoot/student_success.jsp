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
<font style="color:Indigo;font-size:x-large">Welcome,${student.sname}</font>
您可以查看您的成绩<br>
<a href="${pageContext.request.contextPath }/findScoreBySno.do?sno=${student.sno}">点击显示所有成绩</a>
<form action="Teacher_Login_out.do">
        <table>
            <tr>
                <td><input type="submit" value="退出登录"></td>
            </tr>
        </table>
    </form>
</body>
</html>
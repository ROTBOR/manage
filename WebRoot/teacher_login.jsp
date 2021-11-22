
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
	<meta charset="UTF-8"></meta>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"></meta> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
    <meta http-equiv="pragma" content="no-cache"></meta>
    <meta http-equiv="cache-control" content="no-cache"></meta>
    <meta http-equiv="expires" content="0"> </meta>
	<title>登录界面</title>
	<!--必要样式-->
    <link href="css/styles.css" rel="stylesheet" type="text/css" />
    <link href="css/demo.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class='login'>
	  <div class='login_title'>
	    <span>以<select onchange="window.location=this.value;">
		
		<option value="teacher_login.jsp">教师</option>
		<option value="student_login.jsp">学生</option>
		<option value="dean_login.jsp">教务员</option>
		
		</select>身份登录</span>
	  </div>
	  <form action="${pageContext.request.contextPath }/Teacher_Login.do" method="post">
	  <div class='login_fields'>
	    <div class='login_fields__user'>
	      <div class='icon'>
	        <img alt="" src='img/user_icon_copy.png'></img>
	      </div>
	      <input name="tno" placeholder='用户名' maxlength="16" type='text'/>
	    </div>
	    <div class='login_fields__password'>
	      <div class='icon'>
	        <img alt="" src='img/lock_icon_copy.png'></img>
	      </div>
	      <input type="password" name="userid" placeholder='密码' maxlength="16" type='text' type="password"/>
	    </div>
	    <div class='login_fields__submit'>
	      <input type="submit" value='登录'/>
	    </div>
	  </div>
	  	</form>
	  <div class='disclaimer'>
	    <p>欢迎登陆学生成绩管理系统</p>
	  </div>
	</div>
	<script type="text/javascript">
	        //非空验证
	        $('input[type="button"]').click(function () {
	            var login = $('input[name="login"]').val();
	            var pwd = $('input[name="pwd"]').val();
	            var code = $('input[name="code"]').val();
	            if (login == '') 
	                ErroAlert('请输入您的账号');
	            else (pwd == '') 
	                ErroAlert('请输入密码');
	        });
    </script>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>红黑雨客户关系管理系统</title>
<link rel="stylesheet" href="/static/css/style.css">
<script type="text/javascript" src="/static/plugins/easyui/jquery.min.js"></script>
<script type="text/javascript">
    //提交表单
    function submitForm() {
        if($("[name='username']").val() && $("[name='password']").val()){
            $("#login").submit();
        }
    }
    //按回车登录
    $(document).keyup(function (event) {
        if(event.keyCode == 13){
            submitForm();
        }
    });
    //判断是否有错误信息
</script>
</head>
<body>

<div> </div>

  <section class="container">
    <div class="login">
      <h1>用户登录</h1>
      <form id="login" method="post" action="/login.do">
        <p><input type="text" name="username" value="wall" placeholder="账号"></p>
        <p><input type="password" name="password" value="xxx" placeholder="密码"></p> ${msg}
        <p class="submit">
        	<input type="button" value="登录" onclick="submitForm()">
        	<input type="button" value="重置">
        </p>
      </form>
    </div>
  </section>
</body>
</html>
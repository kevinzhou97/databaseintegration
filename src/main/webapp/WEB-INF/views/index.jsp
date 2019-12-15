<html>
<body>
<h2>Hello World!</h2>
</body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: ChiZhou
  Date: 2019/10/24
  Time: 11:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Index</title>
</head>
<script>
    function registration(){
        document.formRegistration.action="/views/toRegistration";
        document.formRegistration.submit();
    }
    function login(){
        document.formLogin.action="/views/toLogin";
        document.formLogin.submit();
    }
</script>
<style>
    body{ text-align:center}
    .div{ margin:0 auto; width:400px; height:100px; border:1px }
</style>
<body>
<div class="container">
    <div class="div">

        <form name="formRegistration" id="formRegistration" action="" method="post">
            <div class="container">
                <h2>注册</h2>
                <p> Registration Action:</p>
                <button type="button" class="btn btn-primary" onclick="registration()">Registration</button>
            </div>
        </form>
        <form name="formLogin" id="formLogin" action="" method="post">
            <div class="container">
                <h2>登录</h2>
                <p>Login Action:</p>
                <button type="button" class="btn btn-primary"  onclick="login()">Login</button>
            </div>
        </form>

    </div>
</div>
</body>
</html>

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
    <title>Main</title>
</head>
<script>
    function toUpdate(){
        document.formRegistration.action="/views/toUpdate";
        document.formRegistration.submit();
    }
    function loginOut(){
        document.formLogin.action="/views/loginOut";
        document.formLogin.submit();
    }
</script>
<body>
<form name="formRegistration" id="formRegistration" action="" method="post">
<div class="container">
    <h2>更新</h2>
    <p> Update Action:</p>
    <button type="button" class="btn btn-primary" onclick="toUpdate()">Update</button>
</div>
</form>
<form name="formLogin" id="formLogin" action="" method="post">
<div class="container">
    <h2>登出</h2>
    <p>Login out Action:</p>
    <button type="button" class="btn btn-primary"  onclick="loginOut()">Login Out</button>
</div>
</form>
</body>
</html>

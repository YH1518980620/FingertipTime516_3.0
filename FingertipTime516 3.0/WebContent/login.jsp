<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>登录</title>
    <link id="stylesheet"  rel="stylesheet" href="css/bootstrap.min.css">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- Custom CSS -->
    <link id="stylesheet0" rel="stylesheet" href="css/style.css">
    <script src="js/jquery-1.8.3.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.sticky.js"></script>
    <script src="js/md5.js"></script>
    <script src="js/main.js"></script>
    <script src="js/user.js"></script>
</head>
<body>
<div class="account_grid">
    <div class=" login-right">
        <h3><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">已注册用户户</font></font></h3>
        <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">如果您拥有我们的帐号，请登录。</font></font></p>
        <form action="CheckServlet" method="post" >
            <div>
                <span><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">账号</font></font><label><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">*</font></font></label></span>
                <input type="text" name="uid" required>
            </div>
            <div>
                <span><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">密码</font></font><label><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">*</font></font></label></span>
                <input type="password" id="password"  required >
                <input type="hidden" name="upwd" id="realpassword">
            </div>
            <font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><input type="submit" value="登录" onclick="MD5()"></font></font>
            <div class="info">${error}</div>
        </form>
    </div>
    <div class=" login-left">
        <h3><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">新客户</font></font></h3>
        <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">请看下面创建新用户</font></font></p>
        <a class="acount-btn" href="register.jsp"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">创建一个帐户</font></font></a>
    </div>
    <div class="clearfix"> </div>
</div>
</body>
</html>
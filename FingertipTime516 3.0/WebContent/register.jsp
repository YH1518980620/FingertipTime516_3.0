<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>注册</title>
    <link id="stylesheet"  rel="stylesheet" href="css/bootstrap.min.css">

    <!-- Font Awesome -->
    <link id="stylesheet0" rel="stylesheet" href="css/font-awesome.min.css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/style.css">
    <script src="js/jquery-1.8.3.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.sticky.js"></script>
    <script src="js/md5.js"></script>
    <script src="js/main.js"></script>
    <script src="js/user.js"></script>
</head>
<body>

<div class="register">
    <form id="register-form"  class="register-table" action="AddUserServlet" method="post" >
        <div class="  register-top-grid">
        		<%
					if(request.getAttribute("loginErro")!=null){
				%>
					<h3><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><%=request.getAttribute("loginErro").toString() %></font></font></h3>
				<%
					}
					else{
						//啥也没有
					}
				%>
            <h3><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">个人信息</font></font></h3>
            <div class="mation">
                <span>账号</span>
                <input type="text" name="uid">
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="  register-bottom-grid">
            <h3><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">登录信息</font></font></h3>
            <div class="mation">
                <span>密码</span>
                <input type="password"  id="p1" required>
                <span>确认密码</span>
                <span class="info" style="display: none">两次输入的密码不一致</span>
                <input type="password" id="p2" required>
                <input type="hidden" name="pwd" id="realp">
            </div>
            <div class="register-but">
                <input type="submit" value="注册用户" onclick="settype('user')">
                <input type="submit" value="注册管理员" onclick="settype('manager')">
                <input type="hidden"  id="selectedtype" name="select" value="">
                <script>
                    function settype(type) {
                        document.getElementById("selectedtype").value=type;
                    }
                </script>
            </div>
        </div>
    </form>
    <div class="clearfix"> </div>
</div>
</body>
</html>
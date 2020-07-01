<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.ParseException" %>
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
</head>
<body>
<div class="register">
    <form id="register-form"  class="register-table" action="UpdateUserServlet" method="post" >
        <div class="  register-top-grid">
             <p>
                <label>当前头像：</label>
                <span >
        			<img  src="image/touxiang.png" width=100>
                </span>
            </p>
            <h3><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">个人信息</font></font></h3>
            <div class="mation">
                <span>账号</span>
                <input type="text" name="uid" readonly="readonly" value="<%=request.getParameter("uid")%>">
            </div>
            <div class="clearfix"> </div>
            <div class="mation">
                <span>昵称</span>
                <input type="text" name="uname"  value="<%=request.getParameter("uname")%>">
            </div>
            <div class="clearfix"> </div>
            <div class="mation">
                <span>性别</span>
                <input type="text" name="usex"  value="<%=request.getParameter("usex")%>">
            </div>
            <div class="clearfix"> </div> 
            <div class="mation">
                <span>生日</span>
                <input type="text" name="ubirth"  value="<%=request.getParameter("ubirth")%>">
            </div>
            <div class="clearfix"> </div>
            <div class="mation">
                <span>密码</span>
                <input type="password" name="upwd"  value="<%=request.getParameter("upwd") %>">
            </div>
            <div class="clearfix"> </div>
            
        </div>
        <div class="  register-bottom-grid">
            <div class="register-but">
                <input type="submit" value="保存信息">
            </div>
        </div>
    </form>
    <div class="clearfix"> </div>
</div>
</body>
</html>
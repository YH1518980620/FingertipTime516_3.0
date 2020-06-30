<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>首页</title>
    <link id="stylesheet"  rel="stylesheet" href="css/bootstrap.min.css">

    <!-- Font Awesome -->
    <link id="stylesheet0" rel="stylesheet" href="css/font-awesome.min.css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/style.css">
    <style type="text/css">
    	.backimage{
    	width:200px;
    	height:500px;
    	background-attachment:fixed;
    	background-image: url("bg2.png");
    	background-repeat: no-repeat;
    	background-size: 100% 100%;
    	}
    </style>
    <style type="text/css">
    	a{
    		font: 40px;
    		color: green;
    	}
    </style>
</head>
<body class="backimage">
<div class="sns-nf">
    <form id="baseInfoForm" name="baseInfoForm" method="post" class="infoForm">
        
        <div id="main-profile" class="parts">
            <h3><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"></font></font></h3>
        <div>
        	<a href="psInfoCheck.jsp">
        		<img  src="/picture/touxiang.jpg" width=110>
        	</a>
        	<div style="position:relative;margin-left: +120px;margin-top: -40px">
        	    <a href="#">
        	    	<b style="font-size: 20px;color: gray">帖子</b>
        	    </a>
        	    <div style="position:relative;margin-left: +80px;margin-top: -43px">
        	    	<a href="#" >
        	    		<b style="font-size: 20px;color: gray">关注</b>
        	    	</a>
        	    </div>
        	    <div style="position:relative;margin-left: +160px;margin-top: -43px">
        	    	<a href="#">
        	    		<b style="font-size: 20px;color: gray">收藏</b>
        	    	</a>
        	    </div>
        	    <div style="position:relative;margin-left: -132px;margin-top: +40px">
        	    	<input type="button" style="width: 452px;height: 40px" value="历史记录" onclick="jump1()">
        	    	<script type="text/javascript">
        	    		function jump1(){
        	    			window.location.href ="http://localhost:8888/FingertipTime516_3.0/news/History_Center.jsp";
        	    		}
        	    	</script>
        	    </div>
        	    <div style="position:relative;margin-left: -132px;margin-top: 0px">
        	    	<input type="button" style="width: 452px;height: 40px" value="创作中心"  onclick="jump2()">
        	    	<script type="text/javascript">
        	    		function jump2(){
        	    			window.location.href ="http://localhost:8888/FingertipTime516_3.0/psInfoCheck.jsp";
        	    		}
        	    	</script>
        	    </div>
        	    <div style="position:relative;margin-left: -132px;margin-top: 0px">
        	    	<input type="button" style="width: 452px;height: 40px" value="历史记录">
        	    </div>
        	</div>
        </div>
        </div>
    </form>
</div>
</body>
</html>
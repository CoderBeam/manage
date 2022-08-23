<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>adminPage</title>
  <link rel="stylesheet" href="./layui/css/layui.css">
  <link rel="stylesheet" href="./css/global.css">
  <link rel="stylesheet" href="./icheck/minimal/red.css">
  <script type="text/javascript" src="./javascript/jquery.min.js"></script>
<script type="text/javascript" src="./layui/layui.js"></script>
<script type="text/javascript" src="./icheck/icheck.js"></script>
<script type="text/javascript" src="./javascript/dw.js"></script>
<script type="text/javascript">
function confirmd() {  
    var msg = "亲，您要退出登录吗？";  
    if (confirm(msg)==true){  
        return true;  
    }else{  
        return false;  
    }  
}
</script>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">管理员后台</div>
    <!-- 水平导航栏 -->
    <ul class="layui-nav layui-layout-left">
      <li class="layui-nav-item"><a href="adminmsg.jsp">基本信息</a></li>
      <li class="layui-nav-item"><a href="admininfo.jsp">用户管理</a></li>
      <li class="layui-nav-item"><a href="adminexa.jsp">考核分析</a></li>
      <li class="layui-nav-item"><a href="admingrd.jsp">成绩贡献</a></li>
      <li class="layui-nav-item"><a href="adminsal.jsp">薪资管理</a></li>
      <li class="layui-nav-item"><a class="layui-this" href="about.jsp">关于</a></li>
    </ul>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="javascript:;">
          <img src="img/ti.jpg" class="layui-nav-img">管理员
        </a>
        <dl class="layui-nav-child">
          <dd><a href="adminmsg.jsp">基本信息</a></dd>
          <dd><a href="infoCorr.jsp">修改信息</a></dd>
        </dl>
      </li>

      <li class="layui-nav-item"><a href="login.jsp" onclick="return confirmd()">退出登陆</a></li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 垂直导航栏 -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item">
        <a href="index.jsp">主页</a>
        </li>
        
    </div>
  </div>
  
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
        <fieldset class="layui-elem-field">
            <legend>关于</legend>
            <div class="layui-field-box">
              
              <hr>
              <div style="position: absolute;"> 
              <div style="width: 100%;height:650px"><img alt="" src="img/bbg.jpg"></div>
              <div style="position:relative;margin-top: -500px;margin-left:60px;"><img style="height: 160px;width: 100%" alt="" src="img/zt.jpg"></div> 
              <div style="position:relative;margin-top: 100px;margin-left:500px;"><img alt="" src="img/qm.jpg"></div>            
              </div>           
            </div>
        </fieldset>
    </div>
  </div>
</div>
</body>
</html>


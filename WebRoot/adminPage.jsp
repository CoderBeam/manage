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
  <title>index</title>
  <link rel="stylesheet" href="./layui/css/layui.css">
  <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script type="text/javascript" src="./javascript/jquery.min.js"></script>
  <script type="text/javascript" src="./layui/layui.js"></script>
  <script type="text/javascript" src="./javascript/index.js"></script>
</head>

<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">用户后台</div>
    <!-- 水平导航栏 -->
    <ul class="layui-nav layui-layout-left">
      <li class="layui-nav-item"><a href="infoAll.jsp">基本信息</a></li>
      <li class="layui-nav-item"><a href="userMag.jsp">用户管理</a></li>
      <li class="layui-nav-item"><a href="infoAll.jsp">考核分析</a></li>
      <li class="layui-nav-item"><a href="infoAll.jsp">成绩贡献</a></li>
      <li class="layui-nav-item"><a href="infoAll.jsp">薪资管理</a></li>
      <li class="layui-nav-item"><a href="about.jsp">关于</a></li>
    </ul>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="javascript:;">
          <img src="img/ti.jpg" class="layui-nav-img">用户
        </a>
        <dl class="layui-nav-child">
          <dd><a href="adminmsg.jsp">基本信息</a></dd>
          <dd><a href="infoCorr.jsp">修改信息</a></dd>
        </dl>
      </li>

      <li class="layui-nav-item"><a href="login.jsp">退出登陆</a></li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 垂直导航栏 -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed">
        <a class="layui-this" href="index.jsp">主页</a>
        </li>
        <li class="layui-nav-item">
          <a class="" href="javascript:;">用户信息</a>
          <dl class="layui-nav-child">
            <dd><a href="info.jsp">基本信息</a></dd>
            <dd><a href="infoCorr.jsp">信息修改</a></dd>
            <dd><a href="infoUpdate.jsp">更新结果</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">成绩贡献</a>
          <dl class="layui-nav-child">
            <dd><a href="grdAll.jsp">成绩总览</a></dd>
            <dd><a href="grdBef.jsp">成绩效益</a></dd>
            <dd><a href="grdDet.jsp">成绩详情</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
            <a href="javascript:;">薪资管理</a>
            <dl class="layui-nav-child">
                <dd><a href="salAll.jsp">薪资总览</a></dd>
                <dd><a href="salDed.jsp">扣税信息</a></dd>
                <dd><a href="salAct.jsp">实际薪资</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item">
                <a href="javascript:;">考核分析</a>
                <dl class="layui-nav-child">
                    <dd><a href="exaAll.jsp">考核总览</a></dd>
                    <dd><a href="exaPas.jsp">考核通过</a></dd>
                    <dd><a href="exaDet.jsp">考核详情</a></dd>
                </dl>
            </li>
      </ul>
    </div>
  </div>

  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
        <fieldset class="layui-elem-field">
            <legend>主页</legend>
            <div class="layui-field-box" style="background-color: #1ABC9C">
               <img alt="" src="img/logo1.png"> 
                
            </div>
        </fieldset>
        
    </div>
      <!-- 图片 -->
        <div style="margin-top: 20px;margin-left: 150px">
               <img alt="" src="img/xx.png"> 
               <span style="font-family: '仿宋';font-size: 30px;"><strong><a href="info.jsp">基本信息</a></strong></span>
               <img alt="" src="img/kh.png" style="margin-left: 350px">
               <span style="font-family: '仿宋';font-size: 30px"><strong><a href="exaAll.jsp">考核分析</a></strong></span> 
            </div>
            
            <div style="margin-top: 80px;margin-left: 130px">
               <img alt="" src="img/gx.png"> 
               <span style="font-family: '仿宋';font-size: 30px;margin-left: 20px"><strong><a href="grdAll.jsp">成绩贡献</a></strong></span>
               <img alt="" src="img/xz.png" style="margin-left: 340px">
               <span style="font-family: '仿宋';font-size: 30px;margin-left: 10px"><strong><a href="salAll.jsp">薪资信息</a></strong></span> 
            </div>
  </div>            
</div>
</body>
</html>
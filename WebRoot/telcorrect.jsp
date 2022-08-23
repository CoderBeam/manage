<%@ page language="java" import="java.util.*,java.sql.*,com.term.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>管理员信息修改</title>
  <link rel="stylesheet" href="./layui/css/layui.css">
  <style type="text/css">
  .p { height:30px; line-height:30px; width:100px; overflow:hidden; }</style>
  <script type="text/javascript" src="./javascript/jquery.min.js"></script>
<script type="text/javascript" src="./layui/layui.js"></script>
<script type="text/javascript" src="./javascript/dw_form_submit.js"></script>
</head>
<body>
<div class="layui-container" style="vertical-align:middle; ">  
    
            <fieldset class="layui-elem-field">
                <div class="layui-field-box">
                    <form class="layui-form" action="">
                        <div class="layui-form-item">
                            <label class="layui-form-label">电话</label>
                            <div class="layui-input-inline">
                            <input type="text" name="tel" required lay-verify="required" placeholder="请输入电话" autocomplete="off" class="layui-input">
                            </div>        
                        </div>
                        <div class="layui-form-item">
                            <div class="layui-input-block">
                            <button class="layui-btn" lay-submit lay-filter="formDemo">提交</button>
                            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                            </div>
                        </div>
                    </form>
                </div>
            </fieldset>
        </div>
</body>
</html>


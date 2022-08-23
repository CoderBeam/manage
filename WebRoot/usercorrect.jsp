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
  <script type="text/javascript" src="./javascript/jquery.min.js"></script>
<script type="text/javascript" src="./layui/layui.js"></script>
<script type="text/javascript" src="./javascript/dw_form_submit.js"></script>
</head>
<div class="layui-container">  
    <div class="layui-row">
        <div class="layui-col-lg12">
            <fieldset class="layui-elem-field">
                
                <div class="layui-field-box">
                    <form class="layui-form" action="">
                        
                        <div class="layui-form-item">
                            <label class="layui-form-label">用户名</label>
                            <div class="layui-input-inline">
                            <input type="text" name="user" required lay-verify="required" placeholder="请输入用户名" autocomplete="off" class="layui-input">
                            </div>        
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">密码</label>
                            <div class="layui-input-inline">
                            <input type="text" name="password" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
                            </div>        
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">电话</label>
                            <div class="layui-input-inline">
                            <input type="text" name="tel" required lay-verify="required" placeholder="请输入电话" autocomplete="off" class="layui-input">
                            </div>        
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">邮箱</label>
                            <div class="layui-input-inline">
                            <input type="text" name="email" required lay-verify="required" placeholder="请输入邮箱" autocomplete="off" class="layui-input">
                            </div>        
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">家庭联系人</label>
                            <div class="layui-input-inline">
                            <input type="text" name="family" required lay-verify="required" placeholder="请输入家庭联系人" autocomplete="off" class="layui-input">
                            </div>        
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">性别</label>
                            <div class="layui-input-block">
                            <input type="radio" name="sex" value="男" title="男">
                            <input type="radio" name="sex" value="女" title="女" checked>
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">专业</label>
                            <div class="layui-input-block">
                            <select name="major" lay-verify="required">
                                <option value=""></option>
                                <option value="0">计算机</option>
                                <option value="1">建筑</option>
                                <option value="2">农业</option>
                            </select>
                            </div>
                        </div>
                         <div class="layui-form-item">
                            <label class="layui-form-label">政治面貌</label>
                            <div class="layui-input-block">
                            <select name="party" lay-verify="required">
                                <option value=""></option>
                                <option value="0">群众</option>
                                <option value="1">共青团员</option>
                                <option value="2">党员</option>
                            </select>
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
    </div>
</div>

</body>
</html>

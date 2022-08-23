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
                            <label class="layui-form-label">教职工号</label>
                            <div class="layui-input-inline">
                            <input type="text" name="uid" required lay-verify="required" placeholder="请输入教职工号" autocomplete="off" class="layui-input">
                            </div>        
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">时间</label>
                            <div class="layui-input-inline">
                            <input type="text" name="time" required lay-verify="required" placeholder="请输入时间" autocomplete="off" class="layui-input">
                            </div>        
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">成绩名称</label>
                            <div class="layui-input-inline">
                            <input type="text" name="grd" required lay-verify="required" placeholder="请输入成绩名称" autocomplete="off" class="layui-input">
                            </div>        
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">成绩结果</label>
                            <div class="layui-input-inline">
                            <input type="text" name="grdresult" required lay-verify="required" placeholder="请输入成绩结果" autocomplete="off" class="layui-input">
                            </div>        
                        </div>
                        
                        <div class="layui-form-item">
                            <label class="layui-form-label">审核状态</label>
                            <div class="layui-input-block">
                            <input type="radio" name="status" value="待审核" title="优" checked>
                            <input type="radio" name="status" value="未审核" title="良">
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


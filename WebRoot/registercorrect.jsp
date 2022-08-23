<%@ page language="java" import="java.util.*,java.sql.*,com.term.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>注册用户信息</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="./layui/css/layui.css">
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"/>
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
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

  </head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">用户后台</div>
    <!-- 水平导航栏 -->
    <ul class="layui-nav layui-layout-left">
      <li class="layui-nav-item layui-this"><a href="registerinfo.jsp">基本信息</a></li>
      <li class="layui-nav-item"><a href="registerabout.jsp">关于</a></li>
    </ul>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="javascript:;">
          <img src="img/a.jpg" class="layui-nav-img">用户
        </a>
        <dl class="layui-nav-child">
          <dd><a href="registerinfo.jsp">基本信息</a></dd>
          <dd><a href="registercorrect.jsp">修改信息</a></dd>
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
        <a href="registerinfo.jsp">主页</a>
        </li>
        <li class="layui-nav-item layui-nav-itemed">
          <a class="" href="javascript:;">用户信息</a>
          <dl class="layui-nav-child">
            <dd><a href="registerinfo.jsp">基本信息</a></dd>
            <dd><a class="layui-this" href="registercorrect.jsp">信息修改</a></dd>
            <dd><a href="registerupdate.jsp">更新结果</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">成绩贡献</a>
          <dl class="layui-nav-child">
            <dd><a href="registerinfo.jsp">成绩总览</a></dd>
            <dd><a href="registerinfo.jsp">成绩效益</a></dd>
            <dd><a href="registerinfo.jsp">成绩详情</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
            <a href="javascript:;">薪资管理</a>
            <dl class="layui-nav-child">
                <dd><a href="registerinfo.jsp">薪资总览</a></dd>
                <dd><a href="registerinfo.jsp">扣税信息</a></dd>
                <dd><a href="registerinfo.jsp">实际薪资</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item">
                <a href="javascript:;">考核分析</a>
                <dl class="layui-nav-child">
                    <dd><a href="registerinfo.jsp">考核总览</a></dd>
                    <dd><a href="registerinfo.jsp">考核通过</a></dd>
                    <dd><a href="registerinfo.jsp">考核详情</a></dd>
                </dl>
            </li>
      </ul>
    </div>
  </div>

<%  
		//获取登陆信息
		String uname = session.getAttribute("re_name").toString();	
        //驱动程序名   
        String driverName = "com.mysql.jdbc.Driver";  
        //数据库用户名   
        String userName = "root";  
        //密码   
        String userPasswd = "root";  
        //数据库名   
        String dbName = "test";  
        //表名   
        String tableName = "user";  
        //联结字符串   
        String url = "jdbc:mysql://localhost:3306/" + dbName + "?user="  
                + userName + "&password=" + userPasswd;  
        Class.forName("com.mysql.jdbc.Driver").newInstance();  
        Connection connection = DriverManager.getConnection(url);  
        Statement statement = connection.createStatement();  
        String sql = "SELECT * FROM user where name='"+uname+"'";   
        ResultSet rs = statement.executeQuery(sql);  
    %>  

  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
        <fieldset class="layui-elem-field">
            <legend>基本信息</legend>
            <div class="layui-field-box">
                <table class="layui-table">
                    <colgroup>
                        <col width="200">
                        <col width="200">
                        <col width="100">
                    </colgroup>        
                    <thead>
                        <tr>
                      	<th>教职工号</th>
                        <th>用户名</th>
                        <th>密码</th>
                        <th>电话</th>
                        <th>邮箱</th>
                        <th>家庭联系人</th>
                        <th>性别</th>
                        <th>专业</th>
                        <th>政治面貌</th>
                      	<th>操作</th>
                      </tr> 
                  </thead>
                  <%  
            while (rs.next()) {  
        %>
  
                  <tbody>
                      <tr>                
                        <td><%out.print(rs.getString(1));%></td>
                        <td><%out.print(rs.getString(2));%></td>
                        <td><%out.print(rs.getString(3));%></td>
                        <td><%out.print(rs.getString(4));%></td>
                        <td><%out.print(rs.getString(5));%></td>
                        <td><%out.print(rs.getString(6));%></td>
                        <td><%out.print(rs.getString(7));%></td>
                        <td><%out.print(rs.getString(8));%></td>
                        <td><%out.print(rs.getString(9));%></td>
                      	<td><button class="btn btn-primary" onclick="window.location.href='registerupdatepage.jsp?id=<%=rs.getString(1)%>' ">修改</button></td>
                      </tr>
                                  <%  
            }  
        %>          
                    </tbody>
                </table>
            </div>
        </fieldset>      
    </div>
  </div>
</div>
<%  
        rs.close();  
        statement.close();  
        connection.close();  
    %> 
    <!-- 密码模态框 -->
  <form method="post" class="form-horizontal" role="form" id="myForm">
        <div class="modal fade" id="myModal1"  tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <!--  定义模态框，过渡效果为淡入，id为myModal,tabindex=-1可以禁用使用tab切换，aria-labelledby用于引用模态框的标题，aria-hidden=true保持模态框在触发前窗口不可见  -->
            <div class="modal-dialog">
                <!--  显示模态框对话框模型（若不写下一个div则没有颜色）  -->
                <div class="modal-content">
                    <!--  显示模态框白色背景，所有内容都写在这个div里面  -->
                    <div class="btn-info modal-header">
                        <!--  模态框标题  -->
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <!--  关闭按钮  -->
                        <h4>密码修改</h4>
                        <!--  标题内容  -->
                    </div>
                    <div class="modal-body">
                        <!--  模态框内容，我在此处添加一个表单 -->
                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label for="uname" class="col-sm-2 control-label">密&nbsp;&nbsp;码</label>
                                <div class="col-sm-6">
                                    <input type="text" id="uname" name="password" class="form-control well" placeholder="请输入修改的密码"/>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="d1" style="margin-left: 95px">
                        <!--  模态框底部样式，一般是提交或者确定按钮 -->                      
                        <button style="margin-left: 20px" type="submit" class="btn btn-info">提交</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal" style="margin-left: 40px">取消</button>                 
                    </div>
                </div><!-- /.modal-content -->
            </div>
        </div> <!-- /.modal -->
    </form>
    <!-- 电话模态框 -->
  <form method="post" class="form-horizontal" role="form" id="myForm">
        <div class="modal fade" id="myModal2"  tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <!--  定义模态框，过渡效果为淡入，id为myModal,tabindex=-1可以禁用使用tab切换，aria-labelledby用于引用模态框的标题，aria-hidden=true保持模态框在触发前窗口不可见  -->
            <div class="modal-dialog">
                <!--  显示模态框对话框模型（若不写下一个div则没有颜色）  -->
                <div class="modal-content">
                    <!--  显示模态框白色背景，所有内容都写在这个div里面  -->
                    <div class="btn-info modal-header">
                        <!--  模态框标题  -->
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <!--  关闭按钮  -->
                        <h4>电话修改</h4>
                        <!--  标题内容  -->
                    </div>
                    <div class="modal-body">
                        <!--  模态框内容，我在此处添加一个表单 -->
                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label for="uname" class="col-sm-2 control-label">电&nbsp;&nbsp;话</label>
                                <div class="col-sm-6">
                                    <input type="text" id="uname" name="tel" class="form-control well" placeholder="请输入修改的电话"/>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="d1" style="margin-left: 95px">
                        <!--  模态框底部样式，一般是提交或者确定按钮 -->                      
                        <button style="margin-left: 20px" type="submit" class="btn btn-info">提交</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal" style="margin-left: 40px">取消</button>                 
                    </div>
                </div><!-- /.modal-content -->
            </div>
        </div> <!-- /.modal -->
    </form>    
    <!-- 邮箱模态框 -->
  <form method="post" class="form-horizontal" role="form" id="myForm">
        <div class="modal fade" id="myModal3"  tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <!--  定义模态框，过渡效果为淡入，id为myModal,tabindex=-1可以禁用使用tab切换，aria-labelledby用于引用模态框的标题，aria-hidden=true保持模态框在触发前窗口不可见  -->
            <div class="modal-dialog">
                <!--  显示模态框对话框模型（若不写下一个div则没有颜色）  -->
                <div class="modal-content">
                    <!--  显示模态框白色背景，所有内容都写在这个div里面  -->
                    <div class="btn-info modal-header">
                        <!--  模态框标题  -->
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <!--  关闭按钮  -->
                        <h4>邮箱修改</h4>
                        <!--  标题内容  -->
                    </div>
                    <div class="modal-body">
                        <!--  模态框内容，我在此处添加一个表单 -->
                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label for="uname" class="col-sm-2 control-label">邮&nbsp;&nbsp;箱</label>
                                <div class="col-sm-6">
                                    <input type="text" id="uname" name="email" class="form-control well" placeholder="请输入修改的邮箱"/>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="d1" style="margin-left: 95px">
                        <!--  模态框底部样式，一般是提交或者确定按钮 -->                      
                        <button style="margin-left: 20px" type="submit" class="btn btn-info">提交</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal" style="margin-left: 40px">取消</button>                 
                    </div>
                </div><!-- /.modal-content -->
            </div>
        </div> <!-- /.modal -->
    </form>        
</body>
</html>

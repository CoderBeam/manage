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
  <title>info</title>
  <link rel="stylesheet" href="./layui/css/layui.css">
  <script type="text/javascript" src="./javascript/jquery.min.js"></script>
  <script type="text/javascript" src="./layui/layui.js"></script>
  <script type="text/javascript" src="./javascript/index.js"></script>
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
    <div class="layui-logo">用户后台</div>
    <!-- 水平导航栏 -->
    <ul class="layui-nav layui-layout-left">
      <li class="layui-nav-item"><a href="info.jsp">基本信息</a></li>
      <li class="layui-nav-item"><a href="userabout.jsp">关于</a></li>
    </ul>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="javascript:;">
          <img src="img/a.jpg" class="layui-nav-img">用户
        </a>
        <dl class="layui-nav-child">
          <dd><a href="info.jsp">基本信息</a></dd>
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
        <a href="index2.jsp">主页</a>
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
        <li class="layui-nav-item layui-nav-itemed">
            <a href="javascript:;">薪资管理</a>
            <dl class="layui-nav-child">
                <dd><a href="salAll.jsp">薪资总览</a></dd>
                <dd><a href="salDed.jsp">扣税信息</a></dd>
                <dd><a class="layui-this" href="salAct.jsp">实际薪资</a></dd>
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
  
  <%  	//获取id
		String userid = request.getParameter("na");
		//获取用户名
		String uname = session.getAttribute("name").toString();
        //驱动程序名   
        String driverName = "com.mysql.jdbc.Driver";  
        //数据库用户名   
        String userName = "root";  
        //密码   
        String userPasswd = "root";  
        //数据库名   
        String dbName = "test";  
        //表名   
        String tableName = "salact";  
        String sql=null;
        //联结字符串   
        String url = "jdbc:mysql://localhost:3306/" + dbName + "?user="  
                + userName + "&password=" + userPasswd;  
        Class.forName("com.mysql.jdbc.Driver").newInstance();  
        Connection connection = DriverManager.getConnection(url);  
        Statement statement = connection.createStatement();  
        if(userid!=null||userid!=""){
        	
        	sql = "SELECT * FROM salact WHERE id=(SELECT id FROM user WHERE name='"+uname+"') AND month=" + userid;
         	
        }if(userid==null||userid==""){
      	   
        	 sql = "SELECT * FROM salact WHERE id=(SELECT id FROM user WHERE name='"+uname+"')" ;
        	
        }
        ResultSet rs = statement.executeQuery(sql);   
     %>  
  
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
        <fieldset class="layui-elem-field">
            <legend>实际薪资</legend>
            <div class="layui-field-box">
            <form class="layui-form" action="">
                <div class="layui-form-item" style="text-align:center;">
                  <div class="layui-inline">
                    <div class="layui-input-inline">
                      <input autocomplete="off" class="layui-input" placeholder="请输入月份" type="text" name="na" value="">
                    </div>
                  </div>
                  <div class="layui-inline" style="text-align:left;">
                    <div class="layui-input-inline">
                      <button class="layui-btn"><i class="layui-icon">&#xe615;</i>查询</button>
                    </div>
                  </div>
                </div>
              </form>
              <hr>
                <table class="layui-table">
                    <colgroup>
                        <col width="150">
                        <col width="200">
                        <col>
                    </colgroup>
                    <thead>
                        <tr>
                        <th>编号</th>
                        <th>教职工号</th>
                        <th>用户名</th>
                        <th>出账月份</th>
                        <th>下发日期</th>
                        <th>基本薪资</th>
                        <th>扣税信息</th>
                        <th>实际薪资</th>
                        <th>结果确认</th>
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
                        <td style="color: #1ABC9C"><%out.print(rs.getString(9));%></td>
                        </tr>
                    </tbody>
                    <%  
            }    
        rs.close();%>
                </table>
            </div>
        </fieldset>
    </div>
  </div>
</div>
<%
        statement.close();  
        connection.close();  
    %>
       <!-- 模态框 -->
  <form method="post" class="form-horizontal" role="form" id="myForm">
        <div class="modal fade" id="myModal"  tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <!--  定义模态框，过渡效果为淡入，id为myModal,tabindex=-1可以禁用使用tab切换，aria-labelledby用于引用模态框的标题，aria-hidden=true保持模态框在触发前窗口不可见  -->
            <div class="modal-dialog">
                <!--  显示模态框对话框模型（若不写下一个div则没有颜色）  -->
                <div class="modal-content">
                    <!--  显示模态框白色背景，所有内容都写在这个div里面  -->

                    <div class="btn-info modal-header">
                        <!--  模态框标题  -->
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <!--  关闭按钮  -->
                        <h4>新增考核</h4>
                        <!--  标题内容  -->
                    </div>

                    <div class="modal-body">
                        <!--  模态框内容，我在此处添加一个表单 -->
                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label for="uname" class="col-sm-2 control-label">用&nbsp;户&nbsp;名</label>
                                <div class="col-sm-6">
                                    <input type="text" id="uname" name="name" class="form-control well" placeholder="请输入用户名"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="upwd" class="col-sm-2 control-label">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码</label>
                                <div class="col-sm-6">
                                    <input type="password" id="upwd" name="password" class="form-control well" placeholder="请输入密码"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="upwd" class="col-sm-2 control-label">电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话</label>
                                <div class="col-sm-6">
                                    <input type="password" id="upwd" name="tel" class="form-control well" placeholder="请输入电话"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="upwd" class="col-sm-2 control-label">邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱</label>
                                <div class="col-sm-6">
                                    <input type="password" id="upwd" name="email" class="form-control well" placeholder="请输入邮箱"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="upwd" class="col-sm-2 control-label">联&nbsp;系&nbsp;人</label>
                                <div class="col-sm-6">
                                    <input type="password" id="upwd" name="family" class="form-control well" placeholder="请输入联系人"/>
                                </div>
                            </div>
                            <div class="form-group">
                            <label for="upwd" class="col-sm-2 control-label">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别</label>
                            <div class="layui-input-block" style="width: 150px">
                            <select name="sex" class="form-control">
                                <option selected="selected" disabled="disabled" style="display: none;font-size: 16px;font-family: '黑体'" value="">请选择</option>
                                <option value="男" style="font-size: 16px;font-family: '黑体'">男</option>
                                <option value="女" style="font-size: 16px;font-family: '黑体'">女</option>
                            </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="upwd" class="col-sm-2 control-label">专&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;业</label>
                            <div class="layui-input-block" style="width: 150px">
                            <select name="major" class="form-control">
                                <option selected="selected" disabled="disabled" style="display: none;font-size: 16px;font-family: '黑体'" value="">请选择</option>
                                <option value="计算机" style="font-size: 16px;font-family: '黑体'">计算机</option>
                                <option value="建筑" style="font-size: 16px;font-family: '黑体'">建筑</option>
                                <option value="农业" style="font-size: 16px;font-family: '黑体'">农业</option>
                            </select>
                            </div>
                        </div>
                         <div class="form-group">
                            <label for="upwd" class="col-sm-2 control-label">政治面貌</label>
                            <div class="layui-input-block" style="width: 150px">
                            <select name="party" class="form-control" style="background-color: #ffffff">
                            	<option selected="selected" disabled="disabled" style="display: none;font-size: 16px;font-family: '黑体'" value="">请选择</option>
                                <option value="群众" style="font-size: 16px;font-family: '黑体'">群众</option>
                                <option value="共青团员" style="font-size: 16px;font-family: '黑体'">共青团员</option>
                                <option value="党员" style="font-size: 16px;font-family: '黑体'">党员</option>
                            </select>
                            </div>
                        </div>
                        </form>
                    </div>

                    <div class="d1" style="margin-left: 95px">
                        <!--  模态框底部样式，一般是提交或者确定按钮 -->                      
                        <button type="submit" class="btn btn-info">提交</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal" style="margin-left: 40px">取消</button>                 
                    </div>
                </div><!-- /.modal-content -->
            </div>
        </div> <!-- /.modal -->
    </form>
</div>
</body>
</html>

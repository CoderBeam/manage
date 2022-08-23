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
        <li class="layui-nav-item">
            <a href="javascript:;">薪资管理</a>
            <dl class="layui-nav-child">
                <dd><a href="salAll.jsp">薪资总览</a></dd>
                <dd><a href="salDed.jsp">扣税信息</a></dd>
                <dd><a href="salAct.jsp">实际薪资</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item layui-nav-itemed">
                <a href="javascript:;">考核分析</a>
                <dl class="layui-nav-child">
                    <dd><a href="exaAll.jsp">考核总览</a></dd>
                    <dd><a class="layui-this" href="exaPas.jsp">考核通过</a></dd>
                    <dd><a href="exaDet.jsp">考核详情</a></dd>
                </dl>
            </li>
      </ul>
    </div>
  </div>
  
    <%  
  		//获取id
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
        String tableName = "exapas";
        String sql=null;
        //联结字符串   
        String url = "jdbc:mysql://localhost:3306/" + dbName + "?user="  
                + userName + "&password=" + userPasswd;  
        Class.forName("com.mysql.jdbc.Driver").newInstance();  
        Connection connection = DriverManager.getConnection(url);  
        Statement statement = connection.createStatement();  
        if(userid!=null||userid!=""){
        	 
        	sql = "SELECT * FROM exapas WHERE name=(SELECT name FROM user WHERE name='"+uname+"') AND month=" + userid;
         	
         }if(userid==null||userid==""){
        	
         	 sql = "SELECT * FROM exapas WHERE name=(SELECT name FROM user WHERE name='"+uname+"')" ;
         	
         }
         ResultSet rs = statement.executeQuery(sql);   
      %> 
  
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
        <fieldset class="layui-elem-field">
            <legend>薪资总览</legend>
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
                        <th>序号</th>
                        <th>教职工号</th>
                        <th>用户名</th>
                        <th>考核日期</th>
                        <th>考核项目</th>
                        <th>考核纪要</th>
                        <th>考核结果</th>
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
                        <td style="color: 1ABC9C"><%out.print(rs.getString(7));%></td>
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
</body>
</html>

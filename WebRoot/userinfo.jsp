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
      <li class="layui-nav-item layui-this"><a href="info.jsp">基本信息</a></li>
      <li class="layui-nav-item"><a href="about.jsp">关于</a></li>
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
        <a href="index.jsp">主页</a>
        </li>
        <li class="layui-nav-item layui-nav-itemed">
          <a class="" href="javascript:;">用户信息</a>
          <dl class="layui-nav-child">
            <dd><a class="layui-this" href="userinfo.jsp">基本信息</a></dd>
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
  
<%-- 中文转换
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
      GBKchar gc=new GBKchar();
     String re_name = session.getAttribute("re_name").toString();
     String re_password = session.getAttribute("re_password").toString();
     String re_tel = session.getAttribute("re_tel").toString();
     String re_email = session.getAttribute("re_email").toString();
     String re_family = session.getAttribute("re_family").toString();
     String re_sex = session.getAttribute("re_sex").toString();
     String re_major = session.getAttribute("re_major").toString();
     String re_party = session.getAttribute("re_party").toString();
     --%>
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
        <fieldset class="layui-elem-field">
            <legend>基本信息</legend>
            <div class="layui-field-box">
                <table class="layui-table">
                    <colgroup>
                        <col width="100">
                        <col width="100">
                        <col width="50">
                    </colgroup>        
                    <thead>
                        <tr>
                        <th>主要信息</th>
                        <th>信息详情</th>                  
                        </tr> 
                    </thead>
                    <%  
            while (rs.next()) {  
        %>
                    <tbody>
                        <tr>
                        <td>教职工号</td>
                        <td><%out.print(rs.getString(1));%></td>
                        
                        </tr>
                        <tr>
                        <td>用户名</td>
                        <td><%out.print(rs.getString(2));%></td>
                        
                        </tr>
                        <tr>
                        <td>密码</td>
                        <td><%out.print(rs.getString(3));%></td>
                        
                        </tr>
                       
                        <tr>
                        <td>电话</td>
                        <td><%out.print(rs.getString(4));%></td>
                        
                        </tr>
                        <tr>
                        <td>邮箱</td>
                        <td><%out.print(rs.getString(5));%></td>
                        
                        </tr>
                        <tr>
                        <td>家庭联系人</td>
                        <td><%out.print(rs.getString(6));%></td>
                        
                        </tr>
                        <tr>
                        <td>性别</td>
                        <td><%out.print(rs.getString(7));%></td>
                        
                        </tr>
                        <tr>
                        <td>专业</td>
                        <td><%out.print(rs.getString(8));%></td>
                        </tr>
                        
                        <tr>
                        <td>政治面貌</td>
                        <td><%out.print(rs.getString(9));%></td>
                        </tr>           
                    </tbody>
                     <%  
            }  
        %>
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
</body>
</html>

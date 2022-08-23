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
  <title>admininfo</title>
  <link rel="stylesheet" href="./layui/css/layui.css">
  <link rel="stylesheet" href="./css/global.css">
  <link rel="stylesheet" href="./icheck/minimal/red.css">
  <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"/>
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="./javascript/jquery.min.js"></script>
<script type="text/javascript" src="./layui/layui.js"></script>
<script type="text/javascript" src="./icheck/icheck.js"></script>
<script type="text/javascript" src="./javascript/dw.js"></script>
<script type="text/javascript" src="javascript/mine.js"></script>
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
        <li class="layui-nav-item layui-nav-itemed">
          <a class="" href="javascript:;">用户信息</a>
          <dl class="layui-nav-child">
            <dd><a href="info.jsp">基本信息</a></dd>
            <dd><a class="layui-this" href="infoCorr.jsp">信息修改</a></dd>
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
            <legend>用户管理</legend>
            <div class="layui-field-box">
              
<form method="post" name="channelform1" onsubmit="return validate_channel_info(this);" action="infoCorrupdate.jsp"> 
						             
              <table class="layui-table">
                  <colgroup>
                      <col width="500">
                      <col width="500">
                      
                  </colgroup>
                  <thead>
                        <tr>
                        <th>主要信息</th>
                        <th>修改详情</th>
                        
                        </tr> 
                    </thead>
                    <tbody>
                    
                        <tr>
                        	<td>工号</td>
                        	<td><input style="width: 200px" type="text" id="upwd" name="name1" class="input" value="<%=request.getParameter("id")%>"/></td>        
                        </tr>
                        
                        <tr>
                        	<td>密码</td>
                        	<td style="text-align: center"><input style="width: 200px" type="text" id="upwd" name="password" class="form-control" placeholder="请输入密码"/></td>               
                        </tr>      
                        <tr>
                        	<td>电话</td>
                        	<td style="text-align: center"><input style="width: 200px" type="text" id="upwd" name="tel" class="form-control" placeholder="请输入电话"/></td>     
                        </tr>
                        <tr>
                        	<td>邮箱</td>
                        	<td style="text-align: center"><input style="width: 200px" type="text" id="upwd" name="email" class="form-control" placeholder="请输入邮箱"/></td>     
                        </tr>
                        <tr>
                        	<td>家庭联系人</td>
                        	<td style="text-align: center"><input style="width: 200px" type="text" id="upwd" name="family" class="form-control" placeholder="请输入家庭联系人"/></td>     
                        </tr>
                        
                        <tr>
                        	<td colspan="2" style="text-align: right;"><button type="submit" class="btn btn-info">提&nbsp;&nbsp;&nbsp;&nbsp;交</button>
                        	</td>
                        </tr>
                    </tbody>
              </table>
              </form>
            </div>
        </fieldset>
    </div>
  </div>
</div>
<%  
  	 	
  	 	//获取id
    	String id=request.getParameter("name1");
        System.out.println(id);
  		//获取输入信息
  		GBKchar gc=new GBKchar();
		
		String password = request.getParameter("password");
		String tel = request.getParameter("tel");
		String email = request.getParameter("email");
		String family = request.getParameter("family");
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
        String sql=null;
        int result=0;
        String url = "jdbc:mysql://localhost:3306/" + dbName + "?user=" + userName + "&password=" + userPasswd;  
        Class.forName("com.mysql.jdbc.Driver").newInstance();  
        Connection connection = DriverManager.getConnection(url);  
        sql = "update user set password='"+password+"',tel='"+tel+"',email='"+email+"',family='"+family+"' where id ='"+id+"'"; 
        PreparedStatement ps = connection.prepareStatement(sql);    
        result = ps.executeUpdate();
        connection.close();
        if(result==1){
        	
        	%>
        	<script type="text/javascript">
        	window.location="infoUpdate.jsp";
        	</script>
        	<%
        }
        else{
        	out.print("修改失败");
        }    
    %>  

</body>
</html>

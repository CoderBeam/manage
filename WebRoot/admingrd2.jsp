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
  <title>adminPage</title>
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
<script type="text/javascript">
function confirmDel(id) {  
    if (confirm("亲，您确定删除吗？")){  
        window.location.href="grddelete2.jsp?id="+id;
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
      <li class="layui-nav-item"><a class="layui-this" href="admingrd.jsp">成绩贡献</a></li>
      <li class="layui-nav-item"><a href="adminsal.jsp">薪资管理</a></li>
      <li class="layui-nav-item"><a href="about.jsp">关于</a></li>
    </ul>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="javascript:;">
          <img src="img/ti.jpg" class="layui-nav-img">管理员
        </a>
        <dl class="layui-nav-child">
          <dd><a href="adminmsg.jsp">基本信息</a></dd>
          <dd><a href="adminmsg.jsp">修改信息</a></dd>
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
          <a href="javascript:;">成绩贡献</a>
          <dl class="layui-nav-child">
            <dd><a href="admingrd.jsp">成绩总览</a></dd>
            <dd><a href="admingrd1.jsp">成绩效益</a></dd>
            <dd><a class="layui-this" href="admingrd2.jsp">新增成绩</a></dd>  
          </dl>
        </li>
        
      </ul>
    </div>
  </div>
  
  <%
				request.setCharacterEncoding("utf-8");
				response.setCharacterEncoding("utf-8");
                //GBKchar gc=new GBKchar();
                String nid = request.getParameter("nid");
			    String name = request.getParameter("name3");
				String password = request.getParameter("password");
				String tel = request.getParameter("tel");
				String email = request.getParameter("email");
				String family = request.getParameter("family");
				String sex = request.getParameter("sex");
				
				SqlTerm en_mysql=new SqlTerm();
				if (name != null & name != null & password != "" & password != null) {
					String constr2 = "jdbc:mysql://localhost:3306/test";
					Connection en_con = DriverManager.getConnection(constr2,"root", "root");
					PreparedStatement en_insert = en_con.prepareStatement("insert into grdall(name,usern,password,tel,email,family,sex) value(?,?,?,?,?,?,?)");
					try {
						en_insert.setString(1, nid);
						en_insert.setString(2, name);
						en_insert.setString(3, password);
						en_insert.setString(4, tel);
						en_insert.setString(5, email);
						en_insert.setString(6, family);
						en_insert.setString(7, sex);
						
						int en_in = en_insert.executeUpdate();
					en_insert.close();
					en_con.close();
						} catch (SQLException e) {
							e.printStackTrace();
						}
						if (name != null & name != null & password != "" & password != null) {
						session.setAttribute("re_nid",nid);
						session.setAttribute("re_name",name);
                        session.setAttribute("re_password",password);
                        session.setAttribute("re_tel",tel);
                        session.setAttribute("re_email",email);
                        session.setAttribute("re_family",family);
                        session.setAttribute("re_sex",sex);
                        
				}
				}
			%>
  
  <%  
  	 	//获取id
		String userid = request.getParameter("na");
		//System.out.println(userid); 
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
        String url = "jdbc:mysql://localhost:3306/" + dbName + "?user="  
                + userName + "&password=" + userPasswd;  
        Class.forName("com.mysql.jdbc.Driver").newInstance();  
        Connection connection = DriverManager.getConnection(url);  
        Statement statement = connection.createStatement();  
        if(userid!=null||userid!=""){
        	 sql = "SELECT * FROM grdall WHERE  month='" + userid +"' or username='" + userid +"'";
        }if(userid==null||userid==""){
        	 sql = "SELECT * FROM  grdall order by uid"; 
        }
        ResultSet rs = statement.executeQuery(sql);  
        
    %>  
  
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
        <fieldset class="layui-elem-field">
            <legend>成绩贡献</legend>
            <div class="layui-field-box">
              <form class="layui-form" action="">
                <div class="layui-form-item" style="text-align:center;">
                  <div class="layui-inline">
                    <div class="layui-input-inline">
                      <input autocomplete="off" class="layui-input" placeholder="请输入月份或用户名" type="text" name="na" value="">
                    </div>
                  </div>
                  <div class="layui-inline" style="text-align:left;">
                    <div class="layui-input-inline">
                      <button class="layui-btn"><i class="layui-icon">&#xe615;</i>查询</button>
                    </div>
                  </div>
                </div>
              </form>
              
              <div class="layui-btn-group">
                  <!-- 按钮 -->      
                  <button class="btn btn-primary" data-toggle="modal" data-target="#myModal">新增</button>             
                  <button style="margin-left: 10px" class="btn btn-primary" onclick="location.reload();">刷新</button>
              </div>
              <hr>
              <table class="layui-table">
                  <colgroup>
                      <col width="150">
                      <col width="150">
                      <col width="200">
                      <col>
                      <col>
                  </colgroup>
                  <thead>
                      <tr>
                      
                      <th>编号</th>
                      <th>教职工号</th>
                      <th>用户名</th>
                      <th>获奖月份</th>
                      <th>详细时间</th>
                      <th>成绩名称</th>
                      <th>成绩结果</th>
                      <th>审核状况</th>
                      
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
                        <td style="color: #1ABC9C"><%out.print(rs.getString(8));%></td>
                      
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
<!-- 模态框 -->
  <form method="post" name="channelform1" onsubmit="return chann(this);" class="form-horizontal" role="form" id="myForm">
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
                        <h4>新增成绩</h4>
                        <!--  标题内容  -->
                    </div>

                    <div class="modal-body">
                        <!--  模态框内容，我在此处添加一个表单 -->
                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label for="uname" class="col-sm-2 control-label">教职工号</label>
                                <div class="col-sm-6">
                                    <input type="text" id="uname" name="nid" class="form-control well" placeholder="请输入教职工号"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="uname" class="col-sm-2 control-label">用户名</label>
                                <div class="col-sm-6">
                                    <input type="text" id="uname" name="name3" class="form-control well" placeholder="请输入教职工号"/>
                                </div>
                            </div>
                             <div class="form-group">
                                <label for="uname" class="col-sm-2 control-label">获奖月份</label>
                                <div class="col-sm-6">
                                    <input type="text" id="uname" name="password" class="form-control well" placeholder="请输入用户名"/>
                                </div>
                            </div>
                             <div class="form-group">
                                <label for="uname" class="col-sm-2 control-label">详细时间</label>
                                <div class="col-sm-6">
                                    <input type="text" id="uname" name="tel" class="form-control well" placeholder="请输入详细时间"/>
                                </div>
                            </div>
                             <div class="form-group">
                                <label for="uname" class="col-sm-2 control-label">成绩名称</label>
                                <div class="col-sm-6">
                                    <input type="text" id="uname" name="email" class="form-control well" placeholder="请输入成绩名称"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="uname" class="col-sm-2 control-label">成绩结果</label>
                                <div class="col-sm-6">
                                    <input type="text" id="uname" name="family" class="form-control well" placeholder="请输入成绩结果"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="uname" class="col-sm-2 control-label">审核状况</label>
                                <div class="col-sm-6">
                                    <input type="text" id="uname" name="sex" class="form-control well" placeholder="请输入审核状况"/>
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

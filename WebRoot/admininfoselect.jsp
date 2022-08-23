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
        window.location.href="checkdel.jsp?id="+id;
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
      <li class="layui-nav-item"><a class="layui-this" href="admininfo.jsp">用户管理</a></li>
      <li class="layui-nav-item"><a href="adminexa.jsp">考核分析</a></li>
      <li class="layui-nav-item"><a href="admingrd.jsp">成绩贡献</a></li>
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
          <dd><a href="infoCorr.jsp"><strong>修改信息</strong></a></dd>
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
          <a href="javascript:;">用户查询</a>
          <dl class="layui-nav-child">
            <dd><a class="layui-this" href="admininfoselect.jsp">精确查询</a></dd>  
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">用户删除</a>
          <dl class="layui-nav-child">
            <dd><a href="admindelete1.jsp">删除详情</a></dd>
            <dd><a href="updateresult.jsp">更新结果</a></dd>
            
          </dl>
        </li>
        <li class="layui-nav-item">
            <a href="javascript:;">用户修改</a>
            <dl class="layui-nav-child">
                <dd><a href="adminupdate.jsp">修改详情</a></dd>
                <dd><a href="updateresult1.jsp">更新结果</a></dd>
                
            </dl>
        </li>
        <li class="layui-nav-item">
                <a href="javascript:;">用户新增</a>
                <dl class="layui-nav-child">
                    <dd><a href="adminadd.jsp">用户详情</a></dd>
                    <dd><a href="updateresult2.jsp">更新结果</a></dd> 
                </dl>
            </li>
      </ul>
    </div>
  </div>
  
<%
				request.setCharacterEncoding("utf-8");
				response.setCharacterEncoding("utf-8");
                //GBKchar gc=new GBKchar();
			    String name = request.getParameter("name");
				String password = request.getParameter("password");
				String tel = request.getParameter("tel");
				String email = request.getParameter("email");
				String family = request.getParameter("family");
				String sex = request.getParameter("sex");
				String major = request.getParameter("major");
				String party = request.getParameter("party");
				SqlTerm en_mysql=new SqlTerm();
				if (name != null & name != null & password != "" & password != null) {
					String constr2 = "jdbc:mysql://localhost:3306/test";
					Connection en_con = DriverManager.getConnection(constr2,"root", "root");
					PreparedStatement en_insert = en_con.prepareStatement("insert into user(name,password,tel,email,family,sex,major,party) value(?,?,?,?,?,?,?,?)");
					try {
						en_insert.setString(1, name);
						en_insert.setString(2, password);
						en_insert.setString(3, tel);
						en_insert.setString(4, email);
						en_insert.setString(5, family);
						en_insert.setString(6, sex);
						en_insert.setString(7, major);
						en_insert.setString(8, party);
						int en_in = en_insert.executeUpdate();
					en_insert.close();
					en_con.close();
						} catch (SQLException e) {
							e.printStackTrace();
						}
						if (name != null & name != null & password != "" & password != null) {
						session.setAttribute("re_name",name);
                        session.setAttribute("re_password",password);
                        session.setAttribute("re_tel",tel);
                        session.setAttribute("re_email",email);
                        session.setAttribute("re_family",family);
                        session.setAttribute("re_sex",sex);
                        session.setAttribute("re_major",major);
                        session.setAttribute("re_party",party);
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
        	 sql = "SELECT * FROM user WHERE id='" + userid + "' or name='" + userid +"'";;
        }if(userid!=null||userid!=""){
        	 sql = "SELECT * FROM user WHERE name='" + userid +"'";
        }
        
        if(userid==null||userid==""){
        	 sql = "SELECT * FROM  user order by id"; 
        }
        ResultSet rs = statement.executeQuery(sql);         
    %>  
  
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
        <fieldset class="layui-elem-field">
            <legend>用户管理</legend>
            <div class="layui-field-box">
              <form class="layui-form" action="">
                <div class="layui-form-item" style="text-align:center;">
                  <div class="layui-inline">
                    <div class="layui-input-inline">
                      <input class="layui-input" placeholder="请输入职工姓名" type="text" name="na" id="na" value="">
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
                              
                  <button class="btn btn-primary" onclick="location.reload();">刷新</button>
              
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
                      
                      <th>教职工号</th>
                        <th>用户名</th>
                        <th>密码</th>
                        <th>电话</th>
                        <th>邮箱</th>
                        <th>家庭联系人</th>
                        <th>性别</th>
                        <th>专业</th>
                        <th>政治面貌</th>
                      
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

</body>
</html>

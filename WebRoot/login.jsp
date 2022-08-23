<%@ page language="java" import="java.util.*,java.sql.*,com.term.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/mine.css">
	<script src="${pageContext.request.contextPath}/javascript/mine.js"></script>
  </head>
  
  <body style="background-image:url('img/bg.jpg');background-size:cover;background-position:center; background-repeat:no-repeat;">
  <div>
   <form name="channelform2" onsubmit="return channel_info(this);">
   <div class="div1"><img src="img/logo.png" style="width:80px;height:80px;"></div>
   <span><strong>成都农业科技职业学院</strong></span>
   <div class="div2">
   <div class="div3">
   <div class="div4">
   <img alt="" src="img/user.png"></div>
   <input type="text"  placeholder="请输入用户名称" name="user" value="">
   </div>
   <div class="div3">
    <div class="div4">
   <img alt="" src="img/pass.png"></div>
   <input type="text"  placeholder="请输入登陆密码" name="password" value="">	
   </div>
   <input type="submit" value="登&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;陆">
   </div>
   <div class="div5">
   <a class="a" href="register.jsp">注册</a>
   </div>
   </form>
   </div>
   
      <%
       request.setCharacterEncoding("utf-8");
       response.setCharacterEncoding("utf-8");
    
        ResultSet re=null; 
        SqlTerm mysql=new SqlTerm();
        String constr="jdbc:mysql://localhost:3306/test";//加载驱动
        Connection con=DriverManager.getConnection(constr,"root","root");
        GBKchar g=new GBKchar();
        String name=request.getParameter("user");//获得首页的用户类型
        String password=request.getParameter("password");
        if(password !="" & password !=null & name != "" & name != null){
        PreparedStatement e_pt=con.prepareStatement("select * from user where name=? and password=?");
        try{
        e_pt.setString(1,name);
        e_pt.setString(2,password);
        re=e_pt.executeQuery();
       
        }
        catch(SQLException e)
        {
        e.printStackTrace();
        }
        if(re.next()==true){
        session.setAttribute("name",name);
        session.setAttribute("password",password);
        response.sendRedirect("index2.jsp");
        e_pt.close();
        con.close();
        }else if(password !="" & password !=null & name != "" & name != null){//& lo_name.equals(name)这里插入代码，就账户面登录都无法正确登录
            PreparedStatement e_pt1=con.prepareStatement("select * from admin where name=? and password=?");
            try{
            e_pt1.setString(1,name);
            e_pt1.setString(2,password);
            re=e_pt1.executeQuery();
           
            }
            catch(SQLException e)
            {
            e.printStackTrace();
            }
            if(re.next()==true){
            session.setAttribute("name",name);
            session.setAttribute("password",password);
            response.sendRedirect("index.jsp");
            e_pt1.close();
            con.close();
            }else{
         %>
        <script type="text/javascript">  
        alert("同户名或密码错误！");
        </script>
     <%
     //当不满足时弹出对话框
        }
            } 
        }
    %>

</body>  
     
  </body>
</html>

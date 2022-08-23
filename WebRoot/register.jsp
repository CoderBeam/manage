<%@ page language="java" import="java.util.*,java.sql.*,com.term.*"  pageEncoding="utf-8"%>
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
	<link rel="stylesheet" type="text/css" href="css/regist.css">
	<link rel="stylesheet" href="css/example.css" type="text/css">
  <link rel="stylesheet" href="css/dropkick.css" type="text/css">
  <script src="javascript/jquery.min1.js"></script>
  <script src="javascript/jquery.dropkick-min.js"></script>
  <script type="text/javascript" charset="utf-8">
  $.fn.ready(function() {
      $('.default').dropkick();

      $('#enable_sample').clicktoggle(
        function() {
          $('[name="country-disabled"]').dropkick('disable',false);
          $(this).html('Disable')
        },
        function() {
          $('[name="country-disabled"]').dropkick('disable');
          $(this).html('Enable')
        }
      );
    });
</script>
<script src="${pageContext.request.contextPath}/javascript/mine.js"></script>
  </head>
  <body style="background-image:url('img/bg.jpg');background-size:cover;background-position:center; background-repeat:no-repeat;">
  <div>
<!--    <form name="form1" onsubmit="User();"> -->
<form method="post" name="channelform1" onsubmit="return validate_channel_info(this);">
   <div class="div1"><img alt="" src="img/logo.png" style="width:80px;height:80px;"></div>
   <span><strong>成都农业科技职业学院</strong></span>
   <div class="div2">
   <div class="div3">
   <div class="div4">
   <img alt="" src="img/user.png"></div>
   <input type="text"  placeholder="请输入用户名称" name="name">
   </div>
   <div class="div3">
    <div class="div4">
   <img alt="" src="img/pass.png"></div>
   <input type="text"  placeholder="请输入登陆密码" name="password">	
   </div>
   
   <div class="div3">
    <div class="div4">
   <img alt="" src="img/phone.png"></div>
   <input type="text"  placeholder="请输入电话号码" name="tel">	
   </div>
   
   <div class="div3">
    <div class="div4">
   <img alt="" src="img/family.png"></div>
   <input type="text"  placeholder="请输入邮箱" name="email">	
   </div>
   
   <div class="div3">
    <div class="div4">
   <img alt="" src="img/tel.png"></div>
   <input type="text"  placeholder="请输入家庭联系人" name="family">	
   </div>
   
   <div class="div6">
     <div class="div614">性别</div>
       <div class="div611"><select name="sex" class="default" tabindex="2">
						<option value="男">
							男
						</option>
						<option value="女">
							女
						</option>
					</select>
         </div>
   </div>
   
   <div class="div6">
     <div class="div61">政治面貌</div>  
     <div class="div613">
     <select name="party" class="default" tabindex="2">
     <option>群众</option>
     <option>团员</option>
     <option>党员</option>
     </select>
     </div>
   </div>
   
   <div class="div6">
     <div class="div61">所学专业</div>
     <div class="div612">
     <select name="major" class="default" tabindex="2">
     <option>计算机</option>
     <option>建筑</option>
     <option>农业</option>
     </select>
     </div>
   </div>
   
   <div style="margin-top: -25px;margin-left: 10px">
   <input type="submit" value="提&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;交">
   </div>
   <div class="div5" style="margin-top: 0px">
   <a class="a" href="login.jsp">登陆</a>
   </div>
   </form>
   </div>
  </body>
  
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
                        response.sendRedirect("registerinfo.jsp");

				}
				}
			%>
</html>

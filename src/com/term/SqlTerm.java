package com.term;
import java.sql.*;

public class SqlTerm {
String driver="com.mysql.jdbc.Driver";
String constr="jdbc:mysql://localhost:3306/test";
Connection conn=null;
Statement stm=null;
ResultSet rs=null;
public SqlTerm(){
	try{
		Class.forName(driver);
	}catch(ClassNotFoundException e){
		e.getStackTrace();
	}
}
public ResultSet myQueru(String sql){
	try{
		conn=DriverManager.getConnection(constr,"root","root");
		stm=conn.createStatement();
		rs=stm.executeQuery(sql);
	}catch(SQLException e){
		e.getStackTrace();
	}
	return rs;
}

public int myUpdate(String sql){
	int re=0;
	try{
		conn=DriverManager.getConnection(constr,"root","root");
		stm=conn.createStatement();
		re=stm.executeUpdate(sql);
	}catch(SQLException e){
		e.getStackTrace();
	}
	return re;
}
}

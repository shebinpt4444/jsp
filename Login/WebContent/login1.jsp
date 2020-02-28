<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.SQLException" %>
<%@page import="java.sql.DriverManager" %>
<%

String userid=request.getParameter("user");
String password=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select uname,password from registration");

	int f=0;
while(rs.next())
{
	
	String user=rs.getString("uname");
	String pass=rs.getString("password");
	
	if(user.equals(userid)&&pass.equals(password))
			{
		
		f=1;
		
			}
	
	
}

if(f==1)
{
	System.out.println("Login Success");
	out.println("Login Success");
}
else
{
	System.out.println("Invalid Id or Password");
	out.println("Invalid Id or Password");
}


%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.SQLException" %>
<%@page import="java.sql.DriverManager" %>
<%
System.out.println("here..");
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String userid=request.getParameter("userid");
String email=request.getParameter("email");
String password=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
Statement st= con.createStatement();
String str1= "INSERT INTO registration VALUES('"+fname+"','"+lname+"','"+userid+"','"+email+"','"+password+"')";
st.execute(str1);
out.println("Registered Succesfully");
%>
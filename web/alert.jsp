<%-- 
    Document   : alert
    Created on : Nov 30, 2013, 5:08:21 PM
    Author     : Thanu
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <style>
          body {
  background-image: url("images/6.jpg");
 }
 </style>
      <link rel='stylesheet' type='text/css' href='style.css' />
	<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
</head>


    <body>
 <table align="center">
       <tr>
           <td align="center"><img src="images/3.jpg" hight="500" width="900" ></td></table>
 
<div id='cssmenu'>
<ul>
   <li class='active'><a href='index.jsp'><span>Home</span></a></li>
   <li><a href='fileupload.jsp'><span>File Upload</span></a></li>
   <li><a href='userdetails.jsp'><span>File Details</span></a></li>
   <li><a href='userupdate.jsp'><span>User Update</span></a></li>
      <li><a href='alert.jsp'><span>View Alerts</span></a></li>
   <li class='last'><a href='index.jsp'><span>Logout</span></a></li>
</ul>
</div>
    <table align="center">
        <h3><center><font color="black">privacy-preserving public auditing for secure cloud storage</h3></center>
              <% String name=(String)session.getAttribute("name1");%>
              <center> <h2>Welcome To:<%=name%></h2></center>
              <%
              Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","privacy","privacy");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from file1 where un='"+name+"'");
%>
<table align="center" border="1">
    <th>User Name</th>
    <th>File Name</th>
    <th>FILE Id</th>
    <th>Date</th>
    <th>Reason</th>
   
    <%
    while(rs.next())
       {
String fn=rs.getString(3);
String fid=rs.getString(2);
String t=rs.getString(5);
String sta=rs.getString(1);
String re=rs.getString(4);
%>
<tr>
    <td><%=sta%></td>
    <td><%=fid%></td>
    <td><%=fn%></td>
    <td><%=re%></td>
    <td><%=t%></td>
    <%
    
}%>
    
    </body>
</html>
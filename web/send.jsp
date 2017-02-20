<%-- 
    Document   : send
    Created on : Nov 30, 2013, 3:00:01 PM
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
      <link rel='stylesheet' type='text/css' href='styles.css' />
	<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
</head>


    <body>
 <table align="center">
       <tr>
           <td align="center"><img src="images/3.jpg" hight="500" width="900" ></td></table>
 
<div id='cssmenu'>
<ul>
   <li class='active'><a href='index.jsp'><span>Home</span></a></li>
   <li><a href='fileverification.jsp'><span>File Verification</span></a></li>
   <li><a href='userview.jsp'><span>User Details</span></a></li>
   <li class='last'><a href='index.jsp'><span>Logout</span></a></li>
</ul>
</div>
    <table align="center">
        <h3><center><font color="black">privacy-preserving public auditing for secure cloud storage</h3></center>
              <% String name=(String)session.getAttribute("name1");%>
              <center> <h2>Welcome To:<%=name%></h2></center>
              <%
              String id=request.getQueryString();
              Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","privacy","privacy");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from filereg where fid='"+id+"' ");
        while(rs.next())
       {
String fw=rs.getString(1);        
String fn=rs.getString(3);
String fid=rs.getString(2);
String t=rs.getString(5);
String sta=rs.getString(6);
%>
 <form method="post" action="sendcon.jsp">
           
                    <table align="center">
                        <tr><td>Username:</td>
                        <td><input type="username" name="username" value="<%=fw%>"/></td></tr>
                      <tr><td>File Name:</td><td> <input type="text" name="pwd" value="<%=fn%>" /></td></tr>
                      <tr><td>File Id:</td><td> <input type="text" name="email"  value="<%=fid%>"/><br /></td></tr>
                       <tr><td>Time:</td><td> <input type="text" name="tel" value="<%=t%>"/><br /></td></tr>
                       <tr><td>Message:</td><td> <textarea name="add" /></textarea></td></tr>
                       
                       <tr><td> <input type="reset" value="Reset"/>&nbsp;&nbsp;
                            <input type="submit" value="Send Alert" /></tr>
                   
                           </tr>
                           </table>
		
 
	</form>
 <%
}%>
    
    </body>
</html>

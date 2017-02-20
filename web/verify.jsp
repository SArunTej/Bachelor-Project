<%-- 
    Document   : verify
    Created on : Nov 30, 2013, 12:58:00 PM
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
   <li><a href='filever.jsp'><span>File Verification</span></a></li>
   <li class='last'><a href='index.jsp'><span>Logout</span></a></li>
</ul>
</div>
    <table align="center">
        <h3><center><font color="black">privacy-preserving public auditing for secure cloud storage</h3></center>
              <% String name=(String)session.getAttribute("name1");%>
              <center> <h2>Welcome To:<%=name%></h2></center>
              <%
              String id=request.getQueryString();
              session.setAttribute("id", id);
              Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","privacy","privacy");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from filereg  where fid='"+id+"'");
    while(rs.next())
 {
           Blob file=rs.getBlob(4);
    byte[] bdata = file.getBytes(1, (int)file.length());
String data1 = new String(bdata);
        %>
        
        <table align="center">
            
      
        <tr>
           <td height="172"><font face="Times New Roman"  size="+1" color="black"><strong>MESSAGE</strong></font></td>
            <td> <textarea rows="20" cols="90" name="file"><%=data1%></textarea> 
            </td>
            
                </tr>
                <tr> 
            <td></td>
            <td align="center"><a href="reject.jsp"><b>Reject</b></a>&nbsp;&nbsp;
             <a href="accept.jsp"><b>Accept</b></a></td>
          </tr>
            </table>
            <%
}
%>

    </body>
</html>

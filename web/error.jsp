<%-- 
    Document   : error
    Created on : Nov 30, 2013, 4:30:41 PM
    Author     : Thanu
--%>

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


    <body >
 <table align="center">
       <tr>
           <td align="center"><img src="images/3.jpg" hight="500" width="900" ></td></table>
 
<div id='cssmenu'>
<ul>
   <li class='active'><a href='index.jsp'><span>Home</span></a></li>
   <li><a href='fileupload.jsp'><span>File Upload</span></a></li>
   <li><a href='userdetails.jsp'><span>File Details</span></a></li>
   <li><a href='userupdate.jsp'><span>User Update</span></a></li>
   <li class='last'><a href='index.jsp'><span>Logout</span></a></li>
</ul>
</div>
        <%
        String id=request.getQueryString();
        session.setAttribute("id1",id);%>
   
        <h3><center><font color="black">privacy-preserving public auditing for secure cloud storage</h3></center>
            <center><h1> Your File Is Can't Download Here</h1></center>
    </body>
</html>

<%-- 
    Document   : download
    Created on : Nov 30, 2013, 3:59:09 PM
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
            <table align="left">
       <tr>
           <td align="left"><img src="images/4.png" hight="200" width="200" ></td></tr>
           
        <form action="downloadcon.jsp" method="post">
            
        <table align="center">
        
            <tr> 
          <td><font face="Times New Roman"  size="+1"><strong>Enter Secret Key</strong></font></td>
          <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="email" class="b"></td>
        </tr>
        
         <tr> 
         
          <td align="center"> <input type="Reset" value="Reset" class="b"></td>&nbsp;&nbsp;
           <td><input type="submit" value="Download" class="b">
        </tr>
        </table>
            </form><br><br><br>
       </table>
  
     
    </body>
</html>

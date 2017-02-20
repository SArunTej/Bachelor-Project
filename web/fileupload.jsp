<%-- 
    Document   : fileupload
    Created on : Nov 29, 2013, 4:21:06 PM
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
   <li class='last'><a href='index.jsp'><span>Logout</span></a></li>
</ul>
</div>
    <table align="center">
        <h3><center><font color="black">privacy-preserving public auditing for secure cloud storage</h3></center>
              <% String name=(String)session.getAttribute("name1");%>
             <table align="left">
                  <center> <h2>Welcome To:<%=name%></h2></center>
       <tr>
           <td align="left"><img src="images/4.png" hight="200" width="200" ></td></tr>
    <form action ="fileupload1.jsp" method="POST">
            
            <table align="center">
                <tr>
                    <td>File Id</td>
                    <td> <input type="text" name="fid" placeholder="Enter validate Email Id" autofocus="" value="<%=(int) (Math.random()*1000)%>"></td>
                </tr>
                <tr>
                    <td>File Name</td>
                    <td><input type="text" name="fname" placeholder="File Name" autofocus=""></td>
                </tr>
                 <tr>
                    <td>Browse File</td>
                    <td><input type="file" name="file" placeholder="Password" autofocus=""></td>
                </tr>
          
            <tr><td>
                    <input type="reset"value="reset">&nbsp;
                    <input type="submit" value="Upload">
            
                </td></tr>
            </table>
             </form>
       </table>
     
</html>

     
    </body>
</html>

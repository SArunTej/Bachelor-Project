<%-- 
    Document   : tpa
    Created on : Nov 29, 2013, 4:00:25 PM
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
   <li><a href='admin.jsp'><span>Admin</span></a></li>
   <li><a href='tpa.jsp'><span>TPA</span></a></li>
   <li class='last'><a href='user.jsp'><span>User</span></a></li>
   <li class='last'><a href='signup.jsp'><span>SignUp</span></a></li>
   <li class='last'><a href='about.jsp'><span>About</span></a></li>
</ul>
</div>
    <table align="center">
        <h3><center><font color="black">privacy-preserving public auditing for secure cloud storage</h3></center>
             <table align="left">
       <tr>
           <td align="left"><img src="images/4.png" hight="200" width="200" ></td></tr>
    <form action ="tpacon1.jsp" method="POST">
            
            <table align="center">
                <tr>
                    <td>UserEmailid</td>
                    <td> <input type="text" name="Username" placeholder="Enter validate Email Id" autofocus=""></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="Password" placeholder="Password" autofocus=""></td>
                </tr>
          
            <tr><td>
                    <input type="submit" value="Login">&nbsp;
             <input type="reset"value="reset">
                </td></tr>
            </table>
             </form>
       </table>
      <center>  <br> <a href="tpasignup.jsp" accesskey="4" title=""><font color="black">Tpa Registration</a></br>
            </center>
</html>

     
    </body>
</html>

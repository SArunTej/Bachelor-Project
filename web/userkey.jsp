<%-- 
    Document   : userkey
    Created on : Nov 29, 2013, 3:13:18 PM
    Author     : Thanu
--%>

    <%@page import="java.sql.*"%>
<%@page import="databaseconnection.SendEmail" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Enabling data dynamic and indirect mutual trust for cloud computing storage systems</h1>
        <%
      
Statement st = null;
ResultSet rs = null;

String email = (String)session.getAttribute("user");
out.println(email);

//String email1 = request.getParameter("select");



            if(email!=""){
                      try{
            Random rand = new Random();
            
            int num = rand.hashCode();
             Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","privacy","privacy");
            String s = "insert into random(email,rkey) values('"+email+"',"+num+")";
            PreparedStatement ps = con.prepareStatement(s);
            ps.executeUpdate();
            SendEmail e=new SendEmail();
            e.Email(email,num);
            out.println(email);
            
            response.sendRedirect("userkey1.jsp?Message=Success");
            }catch(Exception e){
            out.println(e);
            }

            }else{
                out.println("ENTER USERNAME AND EMAIL");
            Thread.sleep(1000);
            response.sendRedirect("user.jsp?Message=Failed");
                          }
        %>
        
    </body>
</html>
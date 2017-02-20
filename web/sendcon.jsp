<%-- 
    Document   : sendcon
    Created on : Nov 30, 2013, 3:29:18 PM
    Author     : Thanu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <%@page import="java.sql.*"%>
                   <%
String name=request.getParameter("username");
String passwd=request.getParameter("pwd");
String e=request.getParameter("email");
String te=request.getParameter("tel");
String ad=request.getParameter("add");


try
               {
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","privacy","privacy");
    Statement st=con.createStatement();
    int i=st.executeUpdate("insert into file1 values('"+name+"','"+passwd+"','"+e+"','"+te+"','"+ad+"')");
    if(i ==1){
    response.sendRedirect("fileverification.jsp?message=Success");
        } 
else
{
         response.sendRedirect("fileverification.jsp?message=Failed");
}            
}
catch(Exception r)
               {
       r.printStackTrace();
}
%>
    </body>
</html>
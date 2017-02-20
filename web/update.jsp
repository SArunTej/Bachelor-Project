<%-- 
    Document   : update
    Created on : Nov 30, 2013, 12:24:30 PM
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
String mo=request.getParameter("month");
String y=request.getParameter("year");
String d=request.getParameter("day");
String date=mo+y+d;
String e=request.getParameter("email");
String te=request.getParameter("tel");
String ad=request.getParameter("add");
String ge=request.getParameter("gen");
session.setAttribute("name", name);

try
               {
     String name3=(String)session.getAttribute("name1");
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","privacy","privacy");
    Statement st=con.createStatement();
    int i=st.executeUpdate("update reg set username='"+name+"',password='"+passwd+"',DOB='"+date+"',EmailId='"+e+"',MobileNo='"+te+"',Address='"+ad+"',Gender='"+ge+"' where username='"+name3+"'");
    if(i ==1){
    response.sendRedirect("userupdate.jsp?message=Success");
        } 
else
{
         response.sendRedirect("userupdate.jsp?message=Failed");
}            
}
catch(Exception r)
               {
       r.printStackTrace();
}
%>
    </body>
</html>
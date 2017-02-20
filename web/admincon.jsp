<%-- 
    Document   : admincon
    Created on : Nov 29, 2013, 12:45:51 PM
    Author     : Thanu
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
       String name=request.getParameter("email");
        String pwd=request.getParameter("pwd");
        session.setAttribute("name", name);
       try
{
          Class.forName("oracle.jdbc.driver.OracleDriver");
           Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","privacy","privacy");
       Statement st= con.createStatement();
       ResultSet rs=st.executeQuery("select * from admin where Name='"+name+"' and Password='"+pwd+"'");
 if(rs.next())
         {
     response.sendRedirect("apage.jsp?Message=Success");
 }
 else
 {
      response.sendRedirect("admin.jsp?Message=Failed");
 }

      }
catch(Exception e)
 {
e.printStackTrace();
}%>
    </body>
</html>
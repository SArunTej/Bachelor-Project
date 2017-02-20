<%-- 
    Document   : usercon
    Created on : Nov 29, 2013, 3:05:45 PM
    Author     : Thanu
--%>

<%@page import="sun.security.util.Password"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%
String name=request.getParameter("Username");
String passwd=request.getParameter("Password");
session.setAttribute("user",name);
session.setAttribute("pwd",passwd);
try
               {
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","privacy","privacy");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from reg where EmailId='"+name+"' and Password='"+passwd+"'");
    if(rs.next())
               {
        String nam=rs.getString(1);
        session.setAttribute("name1", nam);
    response.sendRedirect("userkey.jsp");
       }
    else
    {
    response.sendRedirect("user.jsp?Message=Failed");
    }               
}
catch(Exception r)
               {
       
}
%>
    </body>
</html>

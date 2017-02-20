<%-- 
    Document   : tpacon1
    Created on : Nov 29, 2013, 4:14:01 PM
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
    ResultSet rs=st.executeQuery("select * from tpareg where EmailId='"+name+"' and Password='"+passwd+"'");
    if(rs.next())
               {
        String nam=rs.getString(1);
        session.setAttribute("name1", nam);
    response.sendRedirect("tpapage.jsp?Message=Success");
       }
    else
    {
    response.sendRedirect("tpa.jsp?Message=Failed");
    }               
}
catch(Exception r)
               {
       
}
%>
    </body>
</html>

<%-- 
    Document   : userkeycon
    Created on : Nov 29, 2013, 3:20:31 PM
    Author     : Thanu
--%>

<%@page import="sun.security.util.Password"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%
int key=Integer.parseInt(request.getParameter("email"));

try
               {
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","privacy","privacy");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from random where rkey="+key+" ");
    if(rs.next())
               {
        
    response.sendRedirect("userpage.jsp?Message=Success");
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

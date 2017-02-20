<%-- 
    Document   : fileupload1
    Created on : Nov 29, 2013, 4:46:29 PM
    Author     : Thanu
--%>

<%@page import="java.io.InputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page contentType="text/html;" language="java" import="java.sql.*"  %>

<%
String ff=request.getParameter("file");
String ab=request.getParameter("fid");
String b=request.getParameter("fname");
session.setAttribute("key",ab);
String w="Waiting";


String a="D:/file/";

String fname=a+ff;
FileInputStream fis = null;
File image=new File(fname);

try
{
  String name=(String)session.getAttribute("name1");
  String email=(String)session.getAttribute("user");
  java.sql.Timestamp sqlNow=new java.sql.Timestamp(new java.util.Date().getTime());
 Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","privacy","privacy");
 PreparedStatement ps=con.prepareStatement("insert into filereg  values(?,?,?,?,?,?)");
ps.setString(1,name);
ps.setString(2,ab);
fis=new FileInputStream(image);
ps.setBinaryStream(4, (InputStream)fis, (int)(image.length()));
ps.setTimestamp(5,sqlNow);
ps.setString(3,b);
ps.setString(6,w);
 int x=ps.executeUpdate();

//out.print(Successfully Registered);
if (x==1)
         {
    response.sendRedirect("fileuploadkey.jsp?Message=Success");
}



}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>

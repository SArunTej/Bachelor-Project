<%-- 
    Document   : downloadcon
    Created on : Nov 30, 2013, 4:04:32 PM
    Author     : Thanu
--%>

<%@page import="java.io.OutputStream"%>
<%@page import="sun.security.util.Password"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%
 int key=Integer.parseInt(request.getParameter("email"));

try
               {
    //String id=(String)session.getAttribute("id1");
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","privacy","privacy");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from random1 where rkey="+key+" ");
    while(rs.next())
               {
         String id=(String)session.getAttribute("id1");
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","privacy","privacy");
    Statement st1=con1.createStatement();
     ResultSet rs1=st1.executeQuery("select * from filereg where fid='"+id+"' and status='Accept' ");
     if(rs1.next())
                 {
          Blob b = rs1.getBlob(4);
		
		if(b != null)
		{
			String dataname =(String)session.getAttribute("id1");
			dataname+=".doc";
			byte[] ba = b.getBytes(1, (int)b.length());
			response.setContentType("APPLICATION/DOWNLOAD");
			response.setHeader("Content-Disposition","attachment; filename=\""+dataname+"\"");
			 OutputStream os = response.getOutputStream();
			os.write(ba);
			os.close();
			ba = null;
			
			//session.removeAttribute("document1");
			}
     }
         else{
          response.sendRedirect("error.jsp");
         }
    
       }
         
}
catch(Exception r)
               {
       
}
%>
    </body>
</html>
<%-- 
    Document   : deleteProduct
    Created on : Jun 1, 2020, 12:16:38 AM
    Author     : HP
--%>

<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection" %>
<%@page import="javax.servlet.http.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="description" content="">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>WardrobeHeist</title>
</head>
<body>
    
     <%
      // String id = request.getParameter("userId");
       
        String JDBC_DRIVER="com.mysql.jdbc.Driver";
        String DB_URL="jdbc:mysql://localhost/onlinesystem";
        String USER="root";
        String PASS="";

       Connection connection = null;
       Statement statement = null;
       ResultSet resultSet = null;
        String id="";
        String pid = request.getParameter("pid");
        id=session.getAttribute("cid").toString();
        
        try { 
            Class.forName("com.mysql.jdbc.Driver");  
            connection = DriverManager.getConnection(DB_URL,USER,PASS);
            statement=connection.createStatement();
            
            String qry = "delete from cart where pid = '"+pid+"' and cid = '"+id+"' ";
            //out.print(qry);
            int i = statement.executeUpdate(qry);  
            if(i==0)
            {
                out.print("<script>alert('Sorry ! There is problem Try Again')</script>");
                out.print("<script>window.location='index.html'</script>");
           
            }
            else
            {
                out.print("<script>alert('Done ! Item Remove Successfully')</script>");
                out.print("<script>window.location='cart.jsp'</script>");
            }
            
            connection.close();  
        
            }catch(Exception e){ System.out.println(e);}  
       
        %>
    </body>
</html>

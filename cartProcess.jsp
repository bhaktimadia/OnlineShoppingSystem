<%-- 
    Document   : cartProcess
    Created on : May 31, 2020, 5:26:22 PM
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
        String qty = request.getParameter("pqty");
        if(session.getAttribute("cid")==""){
            out.print("<script>alert('Please Login First')</script>");
            response.sendRedirect("index.html");
        }
        id=session.getAttribute("cid").toString();
        
        try{ 
            Class.forName("com.mysql.jdbc.Driver");  
            connection = DriverManager.getConnection(DB_URL,USER,PASS);
            statement=connection.createStatement();
            out.print(id);
            String qry = "insert into cart(pid,cid,pquantity) values("+pid+","+id+","+qty+")";
            int i = statement.executeUpdate(qry);
            out.print(qry);
            if(i==0)
            {
                out.print("<script>alert('Sorry!! Item is not added into cart due to technical Error')</script>");
                out.print("<script>window.location='index.html'</script>");
            }
            else{
                out.print("<script>alert('Item has been added Successfully')</script>");
                out.print("<script>window.location='home.jsp'</script>");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
                    %>

    </body>
</html>

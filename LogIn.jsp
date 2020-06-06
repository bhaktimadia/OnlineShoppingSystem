<%-- 
    Document   : LogIn
    Created on : May 7, 2020, 5:02:16 PM
    Author     : Bhakti Madia
--%>

<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection" %>
<%@page import="javax.servlet.http.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String JDBC_DRIVER="com.mysql.jdbc.Driver";
        String DB_URL="jdbc:mysql://localhost/onlinesystem";
        String USER="root";
        String PASS="";
        Connection conn;
        String userName=request.getParameter("uname");
        String password=request.getParameter("password");
        try{
            Class.forName(JDBC_DRIVER);
            conn=DriverManager.getConnection(DB_URL,USER,PASS);
            Statement s=conn.createStatement();
            ResultSet rs = s.executeQuery("SELECT cid from `user` WHERE uemail='"+userName+"' and upassword='"+password+"';");
            int i=0;
            while(rs.next()){
                if(session.getAttribute("cid")!=null && session.getAttribute("uid")!=""){
                    session.setAttribute("cid",rs.getInt("cid"));
                }
                else{
                    session.setAttribute("cid","");
                }
                out.print("<script>window.location='home.jsp'</script>");
                i=1;
            }
            if(i==0){
                out.print("<script>alert('Sorry ! Invalid Email or Password')</script>");
                out.print("<script>window.location='index.html'</script>");
            }
            conn.close();
        }
        catch(Exception e){
            e.printStackTrace();
           // response.sendRedirect("index.html");
            //out.println("Username Or Password is Invalid");    
        }
        %>
    </body>
</html>
<!-- SELECT uemail,upassword from user WHERE uemail='"+uname+"' and upassword='"+pass+"'";  -->
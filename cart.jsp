<%-- 
    Document   : cart.jsp
    Created on : May 30, 2020, 9:30:49 PM
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
        <title>WardrobeHeist</title>
    
        <!--Libraries link-->
            <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js" integrity="sha384-6khuMg9gaYr5AxOqhkVIODVIvm9ynTT5J4V1cfthmT+emCG6yVmEZsRHdxlotUnm" crossorigin="anonymous"></script>
            <script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"> </script>
        
        <!--Data Aos Animation-->
            <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"> </script>
            
            <script>
                AOS.init();
            </script>
        <!--Google Fonts-->
            <link href='https://fonts.googleapis.com/css?family=Allura' rel='stylesheet'>
            <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Tangerine">
            <link href='https://fonts.googleapis.com/css?family=Amatic SC' rel='stylesheet'>
            <link href='https://fonts.googleapis.com/css?family=Belleza' rel='stylesheet'>
            <link href='https://fonts.googleapis.com/css?family=Alatsi' rel='stylesheet'>
            <link href='https://fonts.googleapis.com/css?family=Bad Script' rel='stylesheet'>
            <link href='https://fonts.googleapis.com/css?family=Allura' rel='stylesheet'>

    
    	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  		<!--New In font (New Trends)-->
  		<script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>

    
    <style>
* {box-sizing: border-box;}

body { 
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

#navbar {
  overflow: hidden;
  background-color: transparent;
  padding: 30px 10px;
  transition: 0.4s;
  position: fixed;
  width: 100%;
  top: 0;
  z-index: 99;
  padding-top: 60px;
}

#navbar a {
  float: left;
  color: black;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  font-size: 18px; 
  line-height: 25px;
  border-radius: 4px;
}

#navbar #logo {
  font-size: 75px;
  font-family: 'Tangerine', serif;
  font-weight: bold;
  text-shadow: red 2px;
  transition: 0.4s;
}

#navbar a:hover {
  background-color: #ddd;
  color: black;
}

#navbar a.active {
  background-color: dodgerblue;
  color: white;
}

#navbar-right {
  float: right;
}

@media screen and (max-width: 580px) {
  #navbar {
    padding: 20px 10px !important;
  }
  #navbar a {
    float: none;
    display: block;
    text-align: left;
  }
  #navbar-right {
    float: none;
  }
  
  #navFont{
  	font-family: "Comic Sans MS", cursive, sans-serif !important;
  }
}
.top-nav{
	width: 100%;
	height: 35px;
	background-color: #0b0000;
	color: #ffffff;
	font-size: 16px;
	float: right;
}
#mainImg{
    padding-top: 8%;
    -webkit-filter: grayscale(100%); /* Safari 6.0 - 9.0 */
    filter: grayscale(100%);
}
.carttable{
    padding-top: 5%;
}
.cart_product_img{
    height: 50%;
    width: 100%;
}
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 10px 45px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 18px;
  font-weight: 300;
  transition-duration: 0.4s;
  cursor: pointer;
  left:200px;
  position: relative;
}
.button5 {
  background-color: white;
  color: black;
  border: 4px solid #000000;
  left:10%;
}

.button5:hover {
  background-color: #000000;
  color: white;
}

</style>
</head>
<body>
    <%
      // String id = request.getParameter("userId");
       String driverName = "com.mysql.jdbc.Driver";
        String JDBC_DRIVER="com.mysql.jdbc.Driver";
        String DB_URL="jdbc:mysql://localhost/onlinesystem";
        String USER="root";
        String PASS="";

       try {
       Class.forName(driverName);
       } catch (ClassNotFoundException e) {
       e.printStackTrace();
       }

       Connection connection = null;
       Statement statement = null;
       ResultSet resultSet = null;
       %>

	<!--Top Navigation-->
	<div class="col-12 top-nav">
		<div class="navbar-right" style="margin-top: 8.5px;">
			<a href="#signin" style="margin-right: 15px; color: #f4f6fc;">SIGN IN</a>
			<a href="#signup"style="margin-right: 10px; color: #f4f6fc;">SIGN UP</a>
		</div>
	</div>

	<!--Navigation Bar-->

	<div id="navbar" >
		<a href="#default" id="logo">WardrobeHeist</a>
		<div id="navbar-right">
                    <a id="navFont" href="home.jsp">HOME</a>
		    <a href="shoes.jsp" id="navFont">SHOES</a>
		    <a href="womenClothes.jsp" id="navFont">WOMEN'S CLOTHES</a>
                    <a href="menClothes.jsp" id="navFont">MEN'S CLOTHES</a>
		    <a href="accessories.jsp" id="navFont">ACCESSORIES</a>
		    <a href="newIn.jsp" id="navFont">NEW IN</a>
                    <a href="wishList.jsp" id="navFont">WISHLIST</a>
                    <a href="cart.jsp" id="navFont">CART</a>
	  </div>
	</div>
        
        <!--Image Section-->
        
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div id='mainImg'>
                        <img src="images/4_shop.jpg">
                    </div>  
                </div>
            </div>
        
        
        <!--Cart Table-->
        <div class="container carttable">
            <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th scope="col" style="">PRODUCT</th>
                    <th scope="col">PRICE</th>
                    <th scope="col">QUANTITY</th>
                    <th scope="col">ACTION</th>
                </tr>
            </thead>
            <tbody>
            <%
                int i=0;
                try{ 
                    String id="";
                    String pid=""; 
                    id = session.getAttribute("cid").toString();
                    connection = DriverManager.getConnection(DB_URL,USER,PASS);
                    statement=connection.createStatement();
                    String sql ="SELECT * FROM cart where cid = "+id;
                    resultSet = statement.executeQuery(sql);
                    while(resultSet.next()){
                        Statement statement1 = null;
                        ResultSet resultSet1 = null;
                        pid=resultSet.getString("pid");
                        i=1;
                        String sql1 ="Select * from product where pid ="+pid;
                        statement1=connection.createStatement();
                        resultSet1 = statement1.executeQuery(sql1);	
        		resultSet1.next();
                        Blob image = resultSet1.getBlob("pimage");
                        byte[ ] imgData = null ; 
                        imgData = image.getBytes(1,(int)image.length());
                        String imgDataBase64=new String(Base64.getEncoder().encode(imgData));
            %>
                <tr>
                    <td>
                        <div>
                            <div class="col-lg-2">
                                <span>
                                    <img src="data:image/gif;base64,<%= imgDataBase64 %>" alt="Product" class="cart_product_img">
                                </span>
                            </div>
                            <div class="col-lg-10">
                                <span>
                                    <h3 style="float:left; padding-top: 6%;"><%=resultSet1.getString("pname") %></h3>
                                </span>
                            </div>
                        </div>
                    </td>
                    <td class="price">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <span style="align:center;">
                                <h4 style="float:left; padding-top: 10%;"><%=resultSet1.getString("pprice") %></h4>
                            </span>
                        </div>
                        
                    </td>
                    <td class="qty">
                        <span><h4><%=resultSet.getString("pquantity") %></h4></span>
                    </td>
                    <td>
                            <button style="padding:5px; background:#FFCC00;color:#FFFFFF;border:none" onClick="myfun(<%=resultSet1.getString("pid") %>)">Remove</button>            
                    </td>                    
                </tr>
            <% 
                }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
                <tr>
                    <td>
                        <% 
                            if (i==0)
                            {
                                out.print("Add Item First");
                            }
                        %>
                    </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="cart-btn mt-100">
            <button class="button button5" onclick="myfuncorder()">CHECKOUT</button>
        </div>
                
                    
    <script>
// When the user scrolls down 80px from the top of the document, resize the navbar's padding and the logo's font size
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    document.getElementById("navbar").style.padding = "10px 10px";
    document.getElementById("navbar").style.backgroundColor = '#fff';
    document.getElementById("logo").style.fontSize = "50px";
  } else {
    document.getElementById("navbar").style.padding = "55px 10px";
    document.getElementById("logo").style.fontSize = "75px";
    document.getElementById("navbar").style.backgroundColor = 'transparent';
  }
}
function myfun(pid)
{
  location.replace("deleteProduct.jsp?pid="+pid);
}
function myfuncorder(){
    alert("Order Has been placed");
    window.location="ordercartdelete.jsp";
}
    </script>
</body>
</html>

<%-- 
    Document   : home
    Created on : May 7, 2020, 5:29:05 PM
    Author     : Bhakti Madia
--%>

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

#about{
	padding-top: 50px;
	height: 200px;
	color: #000;
	background-color: #fff;
}
#shoes{
	padding-top: 50px;
	height: 500px;
	color: #000000;
	background-color: #fff;
}
#clothes{
	padding-top: 50px;
	overflow: visible;
	height: 640px;
	color: #000000;
	background-color: #fff;
}
#clothesMen{
	padding-top: 0px;
	overflow: visible;
	height: 650px;
	color: #000000;
	background-color: #fff;
}
#accessories{
	padding-top: 0px;
	overflow: visible;
	height: 650px;
	color: #000000;
	background-color: #fff;
}
#newin{
	padding-top: 0px;
	overflow: visible;
	height: 600px;
	color: #000000;
	background-color: #fff;
}
#sale{
	padding-top: 0px;
	overflow: visible;
	height: 600px;
	color: #000000;
	background-color: #fff;
}
#connect{
	
}

.top-nav{
	width: 100%;
	height: 35px;
	background-color: #0b0000;
	color: #ffffff;
	font-size: 16px;
	float: right;
}
/*FOR NEW IN*/
#newinImage{
	height: 600px;
	margin-left: 35.3% ;
	
}
/* New in New trend font css*/
.container{
	position: absolute;
}
.ml10 {
  position: relative;
  font-weight: 700;
  font-size: 4em;
  letter-spacing: 0.025em;
  font-size: 80px;
  font-stretch: expanded;
}

.ml10 .text-wrapper {
  position: absolute;
  display: inline-block;
  padding-top: 0.2em;
  padding-right: 0.02em;
  padding-bottom: 0.1em;
  bottom: 400px;
}

.ml10 .letter {
  display: inline-block;
  line-height: 1em;
  transform-origin: 0 0;
}

.ml101 {
  position: relative;
  font-size: 5em;
  letter-spacing: 0.25em;
  font-family: 'Amatic SC';
  font-stretch: expanded;
}

.ml101 .text-wrapper1 {
  position: absolute;
  display: inline-block;
  padding-top: 0.2em;
  padding-right: 0.02em;
  padding-bottom: 0.1em;
  bottom: 350px;
}

.ml101 .letter1 {
  display: inline-block;
  line-height: 1em;
  transform-origin: 0 0;
}

.ml102 {
  position: relative;
  font-size: 1.5em;
  font-family: 'Belleza';
  font-stretch: expanded;
}

.ml102 .text-wrapper2 {
  position: absolute;
  display: inline-block;
  padding-top: 0.2em;
  padding-right: 0.5em;
  padding-bottom: 0.1em;
  bottom: 320px;
  left: 100px;
}

.ml102 .letter2 {
  display: inline-block;
  line-height: 1em;
  transform-origin: 0 0;*
}
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 10px 45px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  font-weight: 300;
  transition-duration: 0.4s;
  cursor: pointer;
  bottom: 240px;
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

/*Clothes*/
#womenClothes{
	height: 600px;
	padding-left: 395px;
	overflow: visible;
	padding-top: 0px;
}
.ml20 {
  position: relative;
  font-weight: 700;
  font-family: 'Alatsi';
  font-size: 4em;
  letter-spacing: 0.025em;
  font-size: 80px;
  font-stretch: expanded;
}

.ml20 .text-wrapperml20 {
  position: absolute;
  display: inline-block;
  padding-top: 0.2em;
  padding-right: 0.02em;
  padding-bottom: 0.1em;
  bottom: 400px;
  le-ft:10%;
}

.ml20 .letterml20 {
  display: inline-block;
  line-height: 1em;
  transform-origin: 0 0;
}

.ml201 {
  position: relative;
  font-size: 5em;
  letter-spacing: 0.25em;
  font-family: 'Bad Script';
  font-stretch: expanded;
}

.ml201 .text-wrapper201 {
  position: absolute;
  display: inline-block;
  padding-top: 0.2em;
  padding-right: 0.02em;
  padding-bottom: 0.1em;
  bottom: 290px;
  left: 10%;
}

.ml201 .letter201 {
  display: inline-block;
  line-height: 1em;
  transform-origin: 0 0;
}

.ml202 {
  position: relative;
  font-size: 1.5em;
  font-family: 'Allura';
  font-stretch: expanded;
}

.ml202 .text-wrapper202 {
  position: absolute;
  display: inline-block;
  padding-top: 0.2em;
  padding-right: 0.5em;
  padding-bottom: 0.1em;
  bottom: 270px;
  left: 17%;
}

.ml202 .letter202 {
  display: inline-block;
  line-height: 1em;
  transform-origin: 0 0;
}
/*For Men collection*/
#menClothes{
	height: 600px;
	padding-left: 0px;
	margin-left: 0px;
	
}
.ml30 {
  position: relative;
  font-weight: 700;
  font-family: 'Alatsi';
  font-size: 4em;
  letter-spacing: 0.025em;
  font-size: 80px;
  font-stretch: expanded;
}

.ml30 .text-wrapperml30 {
  position: absolute;
  display: inline-block;
  padding-top: 0.2em;
  padding-right: 0.02em;
  padding-bottom: 0.1em;
  bottom: 400px;
  right: 0%;
}

.ml30 .letterml30 {
  display: inline-block;
  line-height: 1em;
  transform-origin: 0 0;
}

.ml301 {
  position: relative;
  font-size: 5em;
  letter-spacing: 0.25em;
  font-family: 'Bad Script';
  font-stretch: expanded;
}

.ml301 .text-wrapper301 {
  position: absolute;
  display: inline-block;
  padding-top: 0.2em;
  padding-right: 0.02em;
  padding-bottom: 0.1em;
  bottom: 290px;
  right: 0%;
}

.ml301 .letter301 {
  display: inline-block;
  line-height: 1em;
  transform-origin: 0 0;
}

.ml302 {
  position: relative;
  font-size: 1.7em;
  font-family: 'Allura';
  font-stretch: expanded;
}

.ml302 .text-wrapper302 {
  position: absolute;
  display: inline-block;
  padding-top: 0.2em;
  padding-right: 0.5em;
  padding-bottom: 0.1em;
  bottom: 260px;
  right: 0%;
}

.ml302 .letter302 {
  display: inline-block;
  line-height: 1em;
  transform-origin: 0 0;
}
.button4 {
  background-color: white;
  color: black;
  border: 4px solid #000000;
  left: 76%;
}

.button4:hover {
  background-color: #000000;
  color: white;
}

/*For Sale*/
.text-block {
  position: absolute;
  bottom: 300px;
  left: 100px;
  background-color: black;
  opacity:0.9;
  color: white;
  padding-left: 320px;
  padding-right: 320px;
}
/*Shoess*/
#shoesImg{
	height: 550px;
	margin-top: 0px;
}
.social a{
	font-size: 4.5em;
	padding: 3rem;
}
.fa-facebook{
	color: #3b5998;
}
.fa-twitter{
	color:#00aced;
}
.fa-google-plus-g{
	color: #dd4b39;
}
.fa-instagram{
	color: #517fa4;
}
.fa-youtube{
	color: #bb0000;
}
.fa-facebook:hover,
.fa-twitter:hover,
.fa-google-plus-g:hover,
.fa-instagram:hover,
.fa-youtube:hover{
	color: #d5d5d5;
}
footer{
	background-color: #3f3f3f;
	color: #d5d5d5;
	padding-top: 2rem;
}
hr.light{
	border-top: 1px solid #d5d5d5;
	width: 75%;
	margin-top: .8rem;
	margin-bottom: 1rem;
}
footer a{
	color: #d5d5d5;
}
hr.light-100{
	border-top: 1px solid #d5d5d5;
	width: 75%;
	margin-top: .8rem;
	margin-bottom: 1rem;
}

.section-title{
    width: 130%;
    margin-bottom: 1.7rem;
    border-left: solid 4px #EEC344;

}

.section-title h2{
    margin-left: 20px;
    margin-bottom: 5px;
    font-weight: 400;
}

.section-title p{
    line-height: 1.8;
    margin-left: 20px;
}

.section-title span{
    font-weight: 700;
}

</style>
</head>
<body>

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
		    <a id="navFont" href="#home">HOME</a>
		    <a href="#about" id="navFont">ABOUT </a>
		    <a href="#shoes" id="navFont">SHOES</a>
		    <a href="#clothes" id="navFont">CLOTHES</a>
		    <a href="#accessories" id="navFont">ACCESSORIES</a>
		    <a href="#newin" id="navFont">NEW IN</a>
		    <a href="#connect" id="navFont">CONTACT US</a>
	  </div>
	</div>

	<!--image slider!-->
	<div id="myCarousel" class="carousel slide" data-ride="carousel" style="padding-top: 110px;">
  		<!-- Indicators -->
  		<ol class="carousel-indicators">
    		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    		<li data-target="#myCarousel" data-slide-to="1"></li>
    		<li data-target="#myCarousel" data-slide-to="2"></li>
    		<li data-target="#myCarousel" data-slide-to="3"></li>
  		</ol>

  		<!-- Wrapper for slides -->
  		<div class="carousel-inner">
    		<div class="item active">
      			<img src="images/splash_shop_2_slide_2_mini.jpg" alt="Chania">
      			<div class="carousel-caption">
        			<h3></h3>
                                <p></p>
      			</div>
    		</div>

    		<div class="item">
      			<img src="images/3-10.jpg" alt="Chicago">
      			<div class="carousel-caption">
        			<h3></h3>
        			<p></p>
      			</div>
    		</div>

    		<div class="item">
      			<img src="images/123.jpg" alt="New York">
      			<div class="carousel-caption">
        			<h3></h3>
        			<p></p>
      			</div>
    		</div>
    		
    		<div class="item">
      			<img src="images/shop_slide2.jpg" alt="New York">
      			<div class="carousel-caption">
        			<h3></h3>
        			<p></p>
      			</div>
    		</div>
  		</div>

  		<!-- Left and right controls -->
  		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
    		<span class="glyphicon glyphicon-chevron-left"></span>
    		<span class="sr-only">Previous</span>
  		</a>
  		<a class="right carousel-control" href="#myCarousel" data-slide="next">
    		<span class="glyphicon glyphicon-chevron-right"></span>
    		<span class="sr-only">Next</span>
  		</a>
	</div>
	
	<!--About-->
	<div id="about">
		<div class="container">
            <div class="section-title" data-aos="fade-right">
            	<div class="row">
            		
		                <h2><span>ABOUT</span> Us</h2>
		                <p>The purpose of online shopping is to save time, save money, Through online shopping one can save this valuable time.Customer can view and select products that they want to buy.Through online shopping we can save our money because price are less than market prices are we receive our bought things at our home through home delivery facility. No need to go anywhere and do shopping we can get different varieties of things online and we can
choose which one we want. Main purpose of online shopping is to provide the best facility to users, with fewer efforts and without the prestigious time of our user.</p>
				</div>
            </div>
        </div>	
	</div>
	
	<!--Shoes-->
	<div id="shoes">
		<div class="container">
			<img id="shoesImg" src="images/shoes1.jpg	"/>
			<h1 class="ml30">
	  			<span class="text-wrapperml30">
	    			<span class="lettersml30">SHOES</span>
	  			</span>
			</h1>
			<h2 class="ml301">
	  			<span class="text-wrapper301">
	    			<span class="letters301">COLLECTION</span>
	  			</span>
			</h2>
			<h4 class="ml302">
	  			<span class="text-wrapper302">
	    			<span class="letters302">New stylish shirts, pants & accessories</span>
	  			</span>
			</h4>
			<a href="shoes.jsp"><button class="button button4">VIEW COLLECTION</button></a>
		</div>
	</div>
	
	<!--CLothes-->
	<div id="clothes">
		<div class="container" data-aos="fade-up">
			<img id="womenClothes" src="images/1111.jpg" />
			<h1 class="ml20">
	  			<span class="text-wrapperml20">
	    			<span class="lettersml20">WOMEN'S</span>
	  			</span>
			</h1>
			<h2 class="ml201">
	  			<span class="text-wrapper201">
	    			<span class="letters201">COLLECTION</span>
	  			</span>
			</h2>
			<h4 class="ml202">
	  			<span class="text-wrapper202">
	    			<span class="letters202">New stylish shirts, pants & accessories</span>
	  			</span>
			</h4>
			<a href="womenClothes.jsp"><button class="button button5">VIEW COLLECTION</button></a>
		</div>
	</div>
	<!--Men's Collection-->
	<div id="clothesMen">
		<div class="container">
			<img id="menClothes" src="images/2.jpg"/>
			<h1 class="ml30">
	  			<span class="text-wrapperml30">
	    			<span class="lettersml30">MEN'S</span>
	  			</span>
			</h1>
			<h2 class="ml301">
	  			<span class="text-wrapper301">
	    			<span class="letters301">COLLECTION</span>
	  			</span>
			</h2>
			<h4 class="ml302">
	  			<span class="text-wrapper302">
	    			<span class="letters302">New stylish shirts, pants & accessories</span>
	  			</span>
			</h4>
			<a href="menClothes.jsp"><button class="button button4">VIEW COLLECTION</button></a>
		</div>
	</div>
	
	<!--Accessories-->
	<div id="accessories">
		<div class="container">
			<img id="menClothes" src="images/accessoroy.jpg"/>
			<h1 class="ml30">
	  			<span class="text-wrapperml30">
	    			<span class="lettersml30">ACCESSORIES</span>
	  			</span>
			</h1>
			<h2 class="ml301">
	  			<span class="text-wrapper301">
	    			<span class="letters301">COLLECTION</span>
	  			</span>
			</h2>
			<h4 class="ml302">
	  			<span class="text-wrapper302">
	    			<span class="letters302">New stylish accessories</span>
	  			</span>
			</h4>
			<a href="accessories.jsp"><button class="button button4">VIEW COLLECTION</button></a>
		</div>
	</div>
	
	<!--newin-->
	<div id="newin" class="container">
		
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
			<img id="newinImage" src="images/ghf.jpg">
			<h1 class="ml10">
	  			<span class="text-wrapper">
	    			<span class="letters">NEW TRENDS</span>
	  			</span>
			</h1><br>	
			<h2 class="ml101">
	  			<span class="text-wrapper1">
	    			<span class="letters1">THIS SEASON</span>
	  			</span>
			</h2>
			<h4 class="ml102">
	  			<span class="text-wrapper2">
	    			<span class="letters2">Fashion show 2k20</span>
	  			</span>
			</h4>
			<a href="newIn.jsp"><button class="button button5">VIEW NEW TRENDS</button></a>
		</div>
	</div>
	
	<!--Sale-->
	<div id="sale">
		
	</div>
	
	<!--COntact us-->
	<hr class="my-4"
	<!--Connect-->
	<div class="container-fluid padding" id="connect">
		<div class="row text-center padding">
			<div class="col-12">
				<h2>Connect</h2>
			</div>
			<div class="col-12 social padding">
				<a href="#"><i class="fab fa-facebook"></i></a>
				<a href="#"><i class="fab fa-twitter"></i></a>
				<a href="#"><i class="fab fa-google-plus-g"></i></a>
				<a href="#"><i class="fab fa-instagram"></i></a>
				<a href="#"><i class="fab fa-youtube"></i></a>
			</div>
		</div>
	</div>
	
	<!--footer-->
	<footer>
		<div class="container-fluid padding">
			<div class="rpw text-center">
				<div class="col-md-4">
					<h1>WardrobeHeist</h1>
					<hr class="light">
					<p>555-555-5555</p>
					<p>wardrobeHeist@gmail.com</p>
					<p>city, state, 0000</p>
				</div>
				<div class="col-md-4">
					<hr class="light">
					<h5>Our Hours</h5>
					<hr class="light">
					<p>hhvhcvchchxvhc</p>
					<p>fhsdhfdsfgd</p>
					<p>cddhsh</p>
				</div>
			</div>
			<div class="col-md-4">
					<hr class="light">
					<h5>Our Hours</h5>
					<hr class="light">
					<p>hhvhcvchchxvhc</p>
					<p>fhsdhfdsfgd</p>
					<p>cddhsh</p>
			</div>
		</div>
		<div class="col-12">
			<hr class="light-100">
			<h5> <center>&copy; WardrobeHeist.com</center></h5>
		</div>
	</footer>
	
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

//For Sale in Text Animation
//New Trends
	// Wrap every letter in a span
var textWrapper = document.querySelector('.ml10 .letters');
textWrapper.innerHTML = textWrapper.textContent.replace(/\S/g, "<span class='letter'>$&</span>");

anime.timeline({loop: false})
  .add({
    targets: '.ml10 .letter',
    rotateY: [-90, 0],
    duration: 5000,
    delay: (el, i) => 45 * i
  });
  
//This season
var textWrapper = document.querySelector('.ml101 .letters1');
textWrapper.innerHTML = textWrapper.textContent.replace(/\S/g, "<span class='letter1'>$&</span>");

anime.timeline({loop: false})
  .add({
    targets: '.ml101 .letter1',
    rotateY: [-90, 0],
    duration: 5000,
    delay: (el, i) => 45 * i
  });
</script>

</body>
</html>

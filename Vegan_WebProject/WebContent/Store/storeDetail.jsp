<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
	<head>
	
			<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
			 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
			<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
			<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
			<link rel="preconnect" href="https://fonts.gstatic.com">
			<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500&display=swap" rel="stylesheet">
	
		<title>Store Detail Page</title>

		<!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-panels.min.js"></script>
		<script src="js/init.js"></script>

	
	
	
	<style>
	/*
	Iridium by TEMPLATED
    templated.co @templatedco
    Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
*/

/*********************************************************************************/
/* Basic                                                                         */
/*********************************************************************************/

	body {
	 font-family: 'Montserrat', sans-serif;
	 font-size: 25px;
	  line-height: 1.8;
	  font-weight: normal;
	  color: gray;
	  position: relative;
	  z-index: 0;
	  padding: 0; 
	}

	body,input,textarea,select
	{
		
		font-size: 11pt;
		line-height: 1.75em;
		color: #4c4c4c;
	}

	h1,h2,h3,h4,h5,h6
	{
		text-transform: uppercase;
		font-weight: bold;
	}
	
		h1 a, h2 a, h3 a, h4 a, h5 a, h6 a
		{
			color: inherit;
			text-decoration: none;
		}
		
	/* Change this to whatever font weight/color pairing is most suitable */
	strong, b
	{
		font-weight: bold;
		color: #000000;
	}
	
	em, i
	{
		
	}

	/* Don't forget to set this to something that matches the design */
	a
	{
		text-decoration: underline;
		color: #272727;
	}

	a:hover
	{
		text-decoration: none;
	}
	
	sub
	{
		position: relative;
		top: 0.5em;
		font-size: 0.8em;
	}
	
	sup
	{
		position: relative;
		top: -0.5em;
		font-size: 0.8em;
	}
	
	hr
	{
		border: 0;
		border-top: solid 1px #ddd;
	}
	
	blockquote
	{
		border-left: solid 0.5em #ddd;
		padding: 1em 0 1em 2em;
		font-style: italic;
	}
	
	p, ul, ol, dl, table
	{
		margin-bottom: 1em;
	}

	header
	{
		margin-bottom: 1em;
	}
	
		header h2
		{
		}
	
		header .byline
		{
			display: block;
			margin: 0.5em 0 0 0;
			padding: 0 0 0.5em 0;
		}
		
	footer
	{
		margin-top: 1em;
	}

	br.clear
	{
		clear: both;
	}

	/* Sections/Articles */
	
		section,
		article
		{
			margin-bottom: 3em;
		}
		
		section > :last-child,
		article > :last-child
		{
			margin-bottom: 0;
		}

		section:last-child,
		article:last-child
		{
			margin-bottom: 0;
		}

		.row > section,
		.row > article
		{
			margin-bottom: 0;
		}

	/* Images */

		.image
		{
			display: inline-block;
		}
		
			.image img
			{
				display: block;
				width: 100%;
			}

			.image.featured
			{
				display: block;
				width: 100%;
				margin: 0 0 2em 0;
			}
			
			.image.full
			{
				display: block;
				width: 100%;
				margin: 0 0 2em 0;
			}
			
			.image.left
			{
				float: left;
				margin: 0 2em 2em 0;
			}
			
			.image.centered
			{
				display: block;
				margin: 0 0 2em 0;
			}

				.image.centered img
				{
					margin: 0 auto;
					width: auto;
				}

	/* Lists */

		ul.default
		{
			margin: 0;
			padding: 0;
			list-style: none;
		}
		
			ul.default li
			{
				padding: 0.60em 0em;
				border-top: 1px solid;
				border-color: rgba(255,255,255,.1);
			}
			
			ul.default li:first-child
			{
				padding-top: 0;
				border-top: none;
			}
			
			ul.default a
			{
				text-decoration: none;
				color: rgba(255,255,255,.5);
			}
			
			ul.default a:hover
			{
				text-decoration: underline;
			}
			
		ul.style {
		}
		
		ul.style li {
			margin: 0;
			padding: 2em 0em 1.5em 0em;
			border-top: 1px solid #ECECEC;
		}
		
		ul.style li:first-child
		{
			padding-top: 0;
			border-top: none;
		}
		
		ul.style img {
			float: left;
			margin-right: 20px;
		}
		
		ul.style p {
		}
		
		ul.style .posted {
			padding: 0em 0em 1em 0em;
			letter-spacing: 1px;
			text-transform: uppercase;
			font-size: 8pt;
			color: #A2A2A2;
		}
		
		ul.style .first {
			padding-top: 0px;
			border-top: none;
		}
							

	/* Buttons */
		
		.button
		{
			position: relative;
			display: inline-block;
			margin-top: 2em;
			padding: 0.90em 1.5em;
			background: #e95d3c;
			border-radius: 40px;
			text-decoration: none;
			text-transform: uppercase;
			font-size: 1.1em;
			color: #FFF;
			-moz-transition: color 0.35s ease-in-out, background-color 0.35s ease-in-out;
			-webkit-transition: color 0.35s ease-in-out, background-color 0.35s ease-in-out;
			-o-transition: color 0.35s ease-in-out, background-color 0.35s ease-in-out;
			-ms-transition: color 0.35s ease-in-out, background-color 0.35s ease-in-out;
			transition: color 0.35s ease-in-out, background-color 0.35s ease-in-out;
			cursor: pointer;
		}

			.button:hover
			{
				background: #de3d27;
				color: #FFF !important;
			}
			
/*********************************************************************************/
/* Header                                                                        */
/*********************************************************************************/

	#header
	{
		position: relative;
		background-image: url("../bg_img/bgimg (25).jpg");
		background-size: cover;
		font-family: font-family: 'Montserrat', sans-serif;
		
		
	}
	  
  #header:after {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    content: '';
    background: rgba(0, 0, 0, 0.7);
    background-size: 100%;
    opacity: .5;
    z-index: -1;
    }

	#logo
	{
	}
	
	#nav
	{
	}

		#nav ul
		{
			margin: 0;
		}
	


/*********************************************************************************/
/* Main                                                                          */
/*********************************************************************************/

	#main
	{
		position: relative;
		background: #fff;
	}

/*********************************************************************************/
/* Featured                                                                      */
/*********************************************************************************/
	
	#featured
	{
		position: relative;
		background: #f2f2f2;
	}
	
	#featured h2
	{
		display: block;
		margin-bottom: 2em;
		font-size: 1.4em;
	}

/* Box Model */

	*, *:before, *:after {
		-moz-box-sizing: border-box;
		-webkit-box-sizing: border-box;
		-o-box-sizing: border-box;
		-ms-box-sizing: border-box;
		box-sizing: border-box;
	}

/* Container */

	body {
		min-width: 1200px;
	}

	.container {
		width: 1200px;
		margin-left: auto;
		margin-right: auto;
	}

	/* Modifiers */
	
		.container.small {
			width: 900px;
		}

		.container.big {
			width: 100%;
			max-width: 1500px;
			min-width: 1200px;
		}

/* Grid */

	/* Cells */

		.\31 2u { width: 100% }
		.\31 1u { width: 91.6666666667% }
		.\31 0u { width: 83.3333333333% }
		.\39 u { width: 75% }
		.\38 u { width: 66.6666666667% }
		.\37 u { width: 58.3333333333% }
		.\36 u { width: 50% }
		.\35 u { width: 41.6666666667% }
		.\34 u { width: 33.3333333333% }
		.\33 u { width: 25% }
		.\32 u { width: 16.6666666667% }
		.\31 u { width: 8.3333333333% }
		.\-11u { margin-left: 91.6666666667% }
		.\-10u { margin-left: 83.3333333333% }
		.\-9u { margin-left: 75% }
		.\-8u { margin-left: 66.6666666667% }
		.\-7u { margin-left: 58.3333333333% }
		.\-6u { margin-left: 50% }
		.\-5u { margin-left: 41.6666666667% }
		.\-4u { margin-left: 33.3333333333% }
		.\-3u { margin-left: 25% }
		.\-2u { margin-left: 16.6666666667% }
		.\-1u { margin-left: 8.3333333333% }

		.row > * {
			padding: 50px 0 0 50px;
			float: left;
			-moz-box-sizing: border-box;
			-webkit-box-sizing: border-box;
			-o-box-sizing: border-box;
			-ms-box-sizing: border-box;
			box-sizing: border-box;
		}

		.row + .row > * {
			padding-top: 50px;
		}

		.row {
			margin-left: -50px;
		}

	/* Rows */

		.row:after {
			content: '';
			display: block;
			clear: both;
			height: 0;
		}

		.row:first-child > * {
			padding-top: 0;
		}

		.row > * {
			padding-top: 0;
		}

		/* Modifiers */

			/* Flush */

				.row.flush {
					margin-left: 0;
				}

				.row.flush > * {
					padding: 0 !important;
				}

			/* Quarter */

				.row.quarter > * {
					padding: 12.5px 0 0 12.5px;
				}

				.row.quarter + .row.quarter > * {
					padding-top: 12.5px;
				}

				.row.quarter {
					margin-left: -12.5px;
				}

			/* Half */

				.row.half > * {
					padding: 25px 0 0 25px;
				}

				.row.half + .row.half > * {
					padding-top: 25px;
				}

				.row.half {
					margin-left: -25px;
				}

			/* One and (a) Half */

				.row.oneandhalf > * {
					padding: 75px 0 0 75px;
				}

				.row.oneandhalf + .row.oneandhalf > * {
					padding-top: 75px;
				}

				.row.oneandhalf {
					margin-left: -75px;
				}

			/* Double */

				.row.double > * {
					padding: 100px 0 0 100px;
				}

				.row.double + .row.double > * {
					padding-top: 100px;
				}

				.row.double {
					margin-left: -100px;
				}
				
			
			


/*********************************************************************************/
/* Basic                                                                         */
/*********************************************************************************/

	body
	{
	}

	body,input,textarea,select
	{
		font-size: 11pt;
	}

/*********************************************************************************/
/* Header                                                                        */
/*********************************************************************************/

	#header
	{
		position: relative;
		padding: 5em 0em;
		text-align: center;
	}
	
		.homepage #header
		{
			padding: 15em 0em;
		}

		#header .container
		{
		




		
		}

/*********************************************************************************/
/* Logo                                                                          */
/*********************************************************************************/

	#logo
	{
		margin-bottom: 3em;
	}
	
		#logo h1
		{
			color: #FFF;
		}
	
		#logo h1 a
		{
			display: block;
			letter-spacing: 1px;
			text-decoration: none;
			text-transform: uppercase;
			font-size: 5em;
			font-weight: 900;
			color: #FFF;
		}

		#logo span
		{
			display: block;
			padding-top: 1em;
			letter-spacing: 1px;
			text-transform: uppercase;
			font-size: 1.2em;
			color: rgba(255,255,255,.5);
		}			
			

/*********************************************************************************/
/* Nav                                                                           */
/*********************************************************************************/

	#nav
	{
	}

		#nav > ul > li
		{
			display: inline-block;
		}
		
			#nav > ul > li:last-child
			{
				padding-right: 0;
			}

			#nav > ul > li > a,
			#nav > ul > li > span
			{
				display: block;
				padding: 1em 1.5em;
				letter-spacing: 1px;
				text-decoration: none;
				text-transform: uppercase;
				font-weight: 200;
				font-size: 1em;
				outline: 0;
				color: rgba(255,255,255,.7);
			}


			#nav > ul > li > a:hover
			{
				color: #FFF;
			}

			#nav li.active a
			{
				background: none;
				border-radius: 40px;
				border: 2px solid;
				border-color: rgba(255,255,255,.8);
				color: #FFF;
			}

			#nav > ul > li > ul
			{
				display: none;
			}


/*********************************************************************************/
/* Main                                                                          */
/*********************************************************************************/

	#main
	{
		padding: 6em 0em 4em 0em;
	}
	
	#content
	{
	}
	
	#content header
	{
		margin-bottom: 2em;
	}
	
	#content header h2
	{
		font-size: 3em;
	}
	
	#content header .byline
	{
		font-size: 1.40em;
	}
	
	#sidebar h2
	{
		display: block;
		padding-bottom: 2em;
		font-size: 1.4em;
	}

/*********************************************************************************/
/* Featured                                                                      */
/*********************************************************************************/
	
	#featured
	{
		padding: 6em 0em;
	}

	#footer{
	background: rgba(0, 0, 0, 0.7);
	font-size:15px;
	padding-bottom: 50px;
	padding-top: 50px;
	color: rgba(255, 255, 255, 0.7);
	
}

#footer .container h2{
	color: #5EC75E;
	font-size: 1.7em;


}

</style>
	
	
	
	
	</head>
	<body>

		<!-- Header -->
		<div id="header">
			<div class="container"> 
				
				<!-- Logo -->
				<div id="logo">
					<h1><a>VEGAN</a></h1>
					<span>encore 1team</span>
				</div>
				
				<!-- Nav -->
				<nav id="nav">
					<ul>
						<li><a href="index.jsp">Home</a></li>
						<li><a href="aboutus.jsp">About Us</a></li>
						<li><a href="./Board/boardList.do">Board</a></li>
						<li><a href="storeMain.jsp">Restaurants</a></li>
						<li><a href="aboutus.jsp">My Page</a></li>
						
					</ul>
				</nav>
			</div>
		</div>

		<!-- Main -->
		<div id="main">
			<div class="container">
				<div class="row"> 

					<!-- Content -->
					<div id="content" class="8u skel-cell-important">
						<section>
						
							<header>
							
							<h2>식당이름</h2>
							
							<!-- <h2>${storeVO.name}</h2> -->	
								<span>좋아요버튼 들어갈자리</span>
							</header>
							<img src="store_img/10-1.jpg" alt="" /></a>
						<!--<img src="${storeVO.url}" alt="" /></a>  -->							
							<p>Sed etiam vestibulum velit, euismod lacinia quam nisl id lorem. Quisque erat. Vestibulum pellentesque, justo mollis pretium suscipit, justo nulla blandit libero, in blandit augue justo quis nisl. Fusce mattis viverra elit. Fusce quis tortor. Consectetuer adipiscing elit. Nam pede erat, porta eu, lobortis eget lorem ipsum dolor. Sed etiam vestibulum velit, euismod lacinia quam nisl id lorem. Quisque erat. Vestibulum pellentesque, justo mollis pretium suscipit, justo nulla blandit libero, in blandit augue justo quis nisl. Fusce mattis viverra elit. Fusce quis tortor. Consectetuer adipiscing elit. Nam pede erat, porta eu, lobortis eget lorem ipsum dolor.</p>
							<p>Maecenas pede nisl, elementum eu, ornare ac, malesuada at, erat. Proin gravida orci porttitor enim accumsan lacinia. Donec condimentum, urna non molestie semper, ligula enim ornare nibh, quis laoreet eros quam eget ante. Aliquam libero. Vivamus nisl nibh, iaculis vitae, viverra sit amet, ullamcorper vitae, turpis. Aliquam erat volutpat. Vestibulum dui sem, pulvinar sed, imperdiet nec, iaculis nec, leo. Fusce odio. Etiam arcu dui, faucibus eget, placerat vel, sodales eget, orci. Donec ornare neque ac sem. Mauris aliquet. Aliquam sem leo, vulputate sed, convallis at, ultricies quis, justo. Donec nonummy magna quis risus. Quisque eleifend. Phasellus tempor vehicula justo. Aliquam lacinia metus ut elit.</p>
							<p>Donec nonummy magna quis risus. Quisque eleifend. Maecenas pede nisl, elementum eu, ornare ac, malesuada at, erat. Proin gravida orci porttitor enim accumsan lacinia. Donec condimentum, urna non molestie semper, ligula enim ornare nibh, quis laoreet eros quam eget ante. Aliquam libero. Vivamus nisl nibh, iaculis vitae, viverra sit amet, ullamcorper vitae, turpis. Aliquam erat volutpat. Vestibulum dui sem, pulvinar sed, imperdiet nec, iaculis nec, leo. Fusce odio. Etiam arcu dui, faucibus eget, placerat vel, sodales eget, orci. Donec ornare neque ac sem. Mauris aliquet. Aliquam sem leo, vulputate sed, convallis at, ultricies quis, justo. Phasellus tempor vehicula justo. Aliquam lacinia metus ut elit.</p>
						</section>
					</div>
					
					<!-- Sidebar -->
					<div id="sidebar" class="4u">
						<section>
							<header>
								<h2>매장정보</h2>
								<p>"${storeVO.address}"</p>
							</header>
							<ul class="style">
								<li>
									<p>메뉴사진 들어갈자리</p>
									<img src="store_img/10-1.jpg" alt="" />
								</li>
								
							</ul>
						</section>
					</div>
					
				</div>
			</div>
		</div>

		<!-- ======= Footer ======= -->
		 <center>
		  <footer id="footer">
		    <div class="container">
		      <h2>VEGAN PROJECT</h2>
		      <p>All life deserves respect, dignity, and compassion. All life.</p>
		    
		      <div class="copyright">
		        &copy; Copyright <strong><span>VEGAN PROJECT</span></strong>. All Rights Reserved
		      </div>
		      <div class="credits">
		        Designed by Enocore 1 Team</a>
		      </div>
		    </div>
		  </footer><!-- End Footer -->
		</center>
		

	
		
	</body>
</html>
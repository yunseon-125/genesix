<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<%@ include file="../include/header.jsp" %>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  		<title>GNSS</title>
  		
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="${path}/apple-touch-icon.jpg">

        <link rel="stylesheet" href="${path}/resources/css/bootstrap.min.css">
        <link rel="stylesheet" href="${path}/resources/css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="${path}/resources/css/fontAwesome.css">
        <link rel="stylesheet" href="${path}/resources/css/light-box.css">
        <link rel="stylesheet" href="${path}/resources/css/templatemo-style.css">
        <link rel="stylesheet" href="${path}/resources/css/style-home.css">

        <link href="https://fonts.googleapis.com/css?family=Kanit:100,200,300,400,500,600,700,800,900" rel="stylesheet">

        <script src="${path}/resources/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>


<style>
   
    *{margin:0;padding:0;}
    ul,li{list-style:none;}
    .slide{width:1280px;  height:853px;overflow:hidden;}
    .slide ul{position:relative;height:100%;  text-align: center;}
    .slide li{position:absolute;left:0;right:0;top:0;bottom:0;opacity:0;animation:fade 8s infinite;}
    .slide li:nth-child(1){background-image:url(${path}/resources/img/g702.jpg); background-size:100%; animation-delay:0s}
    .slide li:nth-child(2){background-image:url(${path}/resources/img/g703.jpg); background-size:100%;animation-delay:2s}
    .slide li:nth-child(3){background-image:url(${path}/resources/img/g704.jpg); background-size:100%;animation-delay:4s}
    .slide li:nth-child(4){background-image:url(${path}/resources/img/g705.jpg); background-size:100%;animation-delay:6s}
     /* 100 / 8 = 12.5 */
    @keyframes fade {
      0% {opacity:0;}
      5% {opacity:1;}
      25% {opacity:1;}
      30% {opacity:0;}
      100% {opacity:0;}
    }
     .slid{width:1208px;  height:481px;overflow:hidden;} 
    .slid ul{position:relative;height:100%;  background-position:center;}
    .slid li{position:absolute;left:0;right:0;top:0;bottom:0;opacity:0;animation:fade 8s infinite;}
    .slid li:nth-child(1){background-image:url(${path}/resources/img/g701.JPG); background-size:100%; animation-delay:0s}
    .slid li:nth-child(2){background-image:url(${path}/resources/img/g701.JPG); background-size:100%; animation-delay:2s}
    .slid li:nth-child(3){background-image:url(${path}/resources/img/g701.JPG); background-size:100%; animation-delay:4s}
    .slid li:nth-child(4){background-image:url(${path}/resources/img/g701.JPG); background-size:100%; animation-delay:6s}
     
     
   	.slide {
   		margin: 0 auto;
   	}
   .slid {
   		margin : 0;
   		display: inline-block;
   		width: 60%;
   		
   }
   .img{
    position: relative;
    background-image: url(${path}/resources/img/g706.jpg);                                                               
    height: 100vh;
    background-size: cover;
   
  }

  .img-cover{
     position: absolute;
     height: 100%;
     width: 100%;
     background-color: rgba(0, 0, 0, 0.7);                                                                 
     z-index:1;
  }

  .img .content{
     position: absolute;
     top:50%;
     left:35%;
     transform: translate(-50%, -50%);                                                                   
     font-size:5rem;
     color: white;
     z-index: 2;
     text-align: left;
  } .img{
    position: relative;
    background-image: url(${path}/resources/img/g706.jpg);                                                               
    height: 100vh;
    background-size: cover;
   
  }
/* ---------------------------- */
  .imgd{
    position: relative;
    background-image: url(${path}/resources/img/g707.jpg);                                                               
    height: 100vh;
    background-size: cover;
   
  }
  
  .imgd-cover{
     position: absolute;
     height: 100%;
     width: 100%;
     background-color: rgba(0, 0, 0, 0.7);                                                                 
     z-index:1;
  }

  .imgd .content{
     position: absolute;
     top:50%;
     left:80%;
     transform: translate(-50%, -50%);                                                                   
     font-size:5rem;
     color: white;
     z-index: 2;
     text-align: right;
  }
   
    .imgt{
    position: relative;
    background-image: url(${path}/resources/img/g705.jpg);                                                               
    height: 100vh;
    background-size: cover;
   
  }

  .imgt-cover{
     position: absolute;
     height: 100%;
     width: 100%;
     background-color: rgba(0, 0, 0, 0.7);                                                                 
     z-index:1;
  }

  .imgt .content{
     position: absolute;
     top:50%;
     left:35%;
     transform: translate(-50%, -50%);                                                                   
     font-size:5rem;
     color: white;
     z-index: 2;
     text-align: left;
  } .imgt{
    position: relative;
    background-image: url(${path}/resources/img/g705.jpg);                                                               
    height: 100vh;
    background-size: cover;
   
  }
     .imga{
    position: relative;
    background-image: url(${path}/resources/img/g7012.jpg);                                                               
    height: 100vh;
    background-size: cover;
   
  }

  .imga-cover{
     position: absolute;
     height: 100%;
     width: 100%;
     background-color: rgba(0, 0, 0, 0.7);                                                                 
     z-index:1;
  }

  .imga .content{
     position: absolute;
     top:50%;
     left:35%;
     transform: translate(-50%, -50%);                                                                   
     font-size:5rem;
     color: white;
     z-index: 2;
     text-align: left;
  } .imga{
    position: relative;
    background-image: url(${path}/resources/img/g7012.jpg);                                                               
    height: 100vh;
    background-size: cover;
   
  }
 
/*------------------------------------------------  */

.btn { 
display:block; 
width:150px; 
height:50px; 
line-height:40px; 
border:1px #ffffff solid;; 
margin:15px auto; 
background-color:#ffffff; 
text-align:center; 
cursor: pointer; 

color:#000000; 
transition:all 0.9s, color 0.3;

 } 

.btn:hover{color:#ffffff;}


.hover4:hover{
 box-shadow: 100px 0 0 0 rgba(0,0,0,0.25) inset,
 		    -100px 0 0 0 rgba(0,0,0,0.25) inset;

 }


/*------------------------------------------------  */

    *{margin:0;padding:0;}  
    ul,li{list-style:none;}
    .slidei{height:100%;overflow:hidden;position:relative;}
    .slidei ul{width:calc(100% * 4);display:flex;transition:1s;}
    .slidei li{width:calc(100% / 4);height:960px;}
    .slidei li:nth-child(1){background-image:url(${path}/resources/img/g708.jpg); background-size:100%; background-repeat: no-repeat;}
    .slidei li:nth-child(2){background-image:url(${path}/resources/img/g709.jpg); background-size:100%; background-repeat: no-repeat;}
    .slidei li:nth-child(3){background-image:url(${path}/resources/img/g7010.jpg); background-size:100%;background-repeat: no-repeat;}
    .slidei li:nth-child(4){background-image:url(${path}/resources/img/g7011.jpg); background-size:100%;background-repeat: no-repeat; }
    .slidei input{display:none;}
    .slidei .bullet{position:absolute;bottom:20px;left:0;right:0;text-align:center;z-index:10;}
    .slidei .bullet label{width:10px;height:10px;border-radius:10px;border:2px solid #666;display:inline-block;background:#fff;font-size:0;transition:0.5s;cursor:pointer;}
    slide jojack 
    #pos1:checked ~ ul{margin-left:0;}
    #pos2:checked ~ ul{margin-left:-100%;}
    #pos3:checked ~ ul{margin-left:-200%;}
    #pos4:checked ~ ul{margin-left:-300%;}
     bullet jojack 
    #pos1:checked ~ .bullet label:nth-child(1),
    #pos2:checked ~ .bullet label:nth-child(2),
    #pos3:checked ~ .bullet label:nth-child(3),
    #pos4:checked ~ .bullet label:nth-child(4){background:#666;} 
  
 /* ------------------------------------------------------------------------------------------------------------ */
  
  .sun {
  width : 100%;
  height : 0;
  padding: 10rem 15rem;
  margin-top : 5px;
  margin-right : 5px;
  margin-bottome : 5px;
  margin-left : 5px;
  border: 1px solid white ;
  }
  
  
  
  
  
  
  
  
  </style>

<!------------------------------------------------------------------------------------------------------->





    </head>

<body bgcolor="black">

    <nav>
    	<div>
    	
       </div>
       <div class="logo">
            <a href="${path}"><img src="${path}/resources/img/genesis-logo-img.png" 
            style="height:40px; width:auto;">
               <em></em>
            </a>
             <p style="float:right; margin-top:20px; font-size: 25px">${sessionScope.name}
        </div>
        <div class="menu-icon">
        <span></span>
      </div>
    </nav>

<img src="${path}/resources/img/1.jpg" width="100%" height="80px">
<div class="img">
        <div class="content">
            <h1>The instinct of race awakens.</h1>
            <br>
            <p style="color:#cc6666; text-align: left; font-size: 15pt;">The harmony of principle and change.</p>
            <br>
            <h3>The G70's exhaust sound resonates as if to prove its remarkable performance.<br>
				The 365 horsepower 3.3-litre twin-turbo V6 engine combines<br>
 				with controls to deliver a higher G70.</h3>
        </div>
        <div class="img-cover"></div>
    </div>

  <br><br>
				
				  <h1 style="text-align: center;">GENESIS G70</h1>
				  <div style="height: 120px;"></div>
				  <p style="color:#cc6666; text-align: center; font-size: 30pt;">Exciting performance improvement.</p> <br>
				  <div style="height: 80px;"></div> 
 				<p style="text-align: center; font-size: 15pt;">"Why is driving Genesis so thrilling? This is because<br>
 				'improvement of performance' focused on strengthening<br>
 				driving performance and improving power performance has <br>
 				become the foundation of our most basic concept. "</p> 
 				<div style="height: 80px;"></div>
 				<p style="color:#cc6666; text-align: center; font-size: 10pt;">GENESIS PERFORMANCE ENGINEERS</p>
 				<div style="height: 120px;"></div>
 				
 				
 				
 		 <h1 style="text-align: center;">PERFORMANCE</h1><hr>
 		 <p style="color:#f4dd5b; text-align: center; font-size: 30pt;">DESIGN</p> <br>
 		
 		 <div style="height: 200px;"></div>
 		 
 		     <div id="video-container">
        <div class="video-overlay"></div>
        <div class="video-content">
            <div class="inner">
              <h4>THE NEW GENESIS</h4>
              <h1>G70<br>ANSEONG </h1>
              <p>Movement, it's our DNA. <br>ASPIRATIONS FOR CONTINUOUS INNOVATION.</p>
              <div style="height: 300px;"></div>
             <a href="${path}/reservation/reservation.do"><button class="solid" style="color: black;">Reservation</button></a>
               
            </div>
        </div>
        <video autoplay loop muted> 
        	<source src="${path}/resources/video/videoplayback.mp4" type="video/mp4" />
        </video>
    </div> 
    
 		
 		<div style="height: 100px;"></div>
 		<h1 style="text-align: center;">INTERIOR</h1><br>
 		 
 		 
 <div class="slide">
    <ul>
      <li></li> 
      <li></li>
      <li></li>
      <li></li>
    </ul>
  </div>
  <div style="height: 80px;"></div>
  
  <div>
  <ul>
      <li></li> 
      <li></li>
      <li></li>
      <li></li>
    </ul>
  
  
  </div>
  
     
 <div style="position:relative; height:60%;">
  <img src="${path}/resources/img/g701.JPG" style="width:65%; float:left;" >
  
    <div style="display: inline-block; width: 25%; height:50%; float:left;" >
    <h3 style="text-align: center;">a thrilling thrill</h3>
   <div style="height: 80px;"></div>
   <h1 style="text-align: center; color:#cc6666;">The race began.</h1>
   <div style="height: 80px;"></div>
   <p style="text-align: center;">The 2.0 Litre Turbocharger GDI 4-cylinder engine, native to the G70,<br>
                            delivers a powerful 252 horsepower*. The optional 365 horsepower*<br>
                             3.3L twin-turbo GDI 6-cylinder engine also reaches 60 miles per <br>
                              hour in 4.5 seconds* for explosive acceleration.</p>
 <hr> 

 </div>
</div>
 	
 	 <div style="height: 200px;"></div>
 	<%--  
<div style="width:60%; display: inline-block;">
  <img width="100%" src="${path}/resources/img/g700.JPG">
</div>
 	 <div style="display: inline-block; width: 25%; ">
 	
	 <h3 style="text-align: center;">a thrilling thrill</h3>
	<div style="height: 80px;"></div>
	<h1 style="text-align: center; color:#cc6666;">The race began.</h1>
	<div style="height: 80px;"></div>
	<p style="text-align: center;">The 2.0 Litre Turbocharger GDI 4-cylinder engine, native to the G70,<br>
 									delivers a powerful 252 horsepower*. The optional 365 horsepower*<br>
 									 3.3L twin-turbo GDI 6-cylinder engine also reaches 60 miles per <br>
  									 hour in 4.5 seconds* for explosive acceleration.</p>
 <hr>  --%>

 </div>


 	 <div style="height: 100px;"></div>
 
 <h1 style="text-align: center;">EXTERIOR</h1>
 
 
 
 		 <div style="height: 100px;"></div>
 	<!-- 	<div class="imgd">
        <div class="content">
            <p style="color:#ffffff; text-align: right; font-size: 50pt;">eye-catching beauty</p>
            <br>
            <br>
            <p style="color:#cc6666; text-align: right; font-size: 15pt;">a design of overflowing elegance</p>
            <br>
            <p style="color:#ffffff; text-align: right; font-size: 10pt;">The irresistible attractive design of the G70 creates a wide and <br>
            dramatic stand with a low center of gravity. Sophisticated profile<br>
             makes you feel overwhelmed just by looking at the intensely designed<br>
              cross-hatch-style grille to the Sportchu dual muffler tips.</p>
        </div>
        
     
        <div class="imgd-cover"></div>
   
	
		
    </div>
 <div style="height: 100px;"></div>
 <h2 style="text-align: center;">DISCOVER GENESIS G70</h2>
  <div style="height: 100px;"></div> -->
 
   <div class="slidei">
    <input type="radio" name="pos" id="pos1" checked>
    <input type="radio" name="pos" id="pos2">
    <input type="radio" name="pos" id="pos3">
    <input type="radio" name="pos" id="pos4">
    <ul>
      <li></li>
      <li></li>
      <li></li>
      <li></li>
    </ul>
    <p class="bullet">
      <label for="pos1">1</label>
      <label for="pos2">2</label>
      <label for="pos3">3</label>
      <label for="pos4">4</label>
    </p>
  </div>
 
 
 
 
 
 
 <div style="width:40%; height:150px; border:1px solid black; float: left;">
<p style="color:#ffffff; text-align: left; font-size: 15pt; padding:10% 0px 0 30% " >Design</p><br><br>
<p style="color:#cc6666; text-align: left; font-size: 30pt;	padding:30px 0px 0 30% " >dynamic elegance</p>

</div>
<div style="width:65%; height:150px; border:1px solid black; float: right;">
<p style="color:#666666; text-align: left; font-size: 10pt; padding:5% 0px 0 43% " >The G70 is a compact sedan that emphasizes energetic dynamic characters based<br> on its simplicity and elegance, as a high-performance luxury<br> vehicle of traditional rear-wheel drive powertrain and platform DNA.</p><br><br>
<a href="${path}/reservation/reservation.do"><button class="btn hover4">Request Quote</button></a>
</div>
 <div style="height: 500px;"></div>
 
  
  
  <h1 style="text-align: center;">TECHNOLOGY</h1>
   <div style="height: 100px;"></div>
  <div class="imgt">
        <div class="content">
            <h1>Perfection, for one.</h1>
            <br>
            <p style="color:#cc6666; text-align: left; font-size: 15pt;">The harmony of principle and change.</p>
            <br>
            <p style="color:#ffffff; text-align: left; font-size: 10pt;">The driver of the G70 is fully integrated with the vehicle with selectable head-up displays, <br>
				an around view monitoring system, and advanced integrated technology including touchscreen navigation.<br>
 				Once the driver is fully connected to the G70 as well as<br>
 				the surrounding environment, the driver's cognitive ability is improved and safety is enhanced.</h3>
        </div>
        <div class="imgt-cover"></div>
    </div>
  <div style="height: 100px;"></div>
 
  
   
<div style="width:60%; display: inline-block;">
   <video autoplay loop muted style="position:relative; left: 10%; top: 0px; width:80%;"> 
        	<source src="${path}/resources/video/TECHNOLOGY.mp4" type="video/mp4" />
        </video>
</div>
 	 <div style="display: inline-block; width: 25%; ">
 	
	 <h1 style="text-align: center;">Customized internal capabilities.</h1>
	<div style="height: 80px;"></div>
	<p style="text-align: center; color:#cc6666; font-size:8pt;">Surround View Monitor Selection</p>
	<div style="height: 80px;"></div>
	<p style="text-align: center; font-size: 10pt;">The G70's Around View Monitor system provides a 360-degree<br>
 									image around the vehicle, allowing you to see out of sight,<br>
 									 avoid external obstructions, and make parking easier. <br></p>
 	<p style="text-align: center; color:#333333; font-size:8pt;">Integrated Navigation Selection and 8-inch Touchscreen Basic Application</p>
 	<p style="text-align: center; color:#333333; font-size:8pt;">LEXCON?Premium Audio System Selection</p>
 	<p style="text-align: center; color:#333333; font-size:8pt;">Hands-free Smart Trunk Release and PowerTrunk Selections</p>								 
 <hr> 

 </div>
 
 
 <div style="height: 100px;"></div>
 
  
   
  <h1 style="text-align: center;">SAFETY</h1>
   <div style="height: 100px;"></div>
  <div class="imga">
        <div class="content">
            <h1>I always think of you as my top priority</h1>
            <br>
            <p style="color:#cc6666; text-align: left; font-size: 15pt;">I'm trying for your safety.</p>
            <br>
            <p style="color:#ffffff; text-align: left; font-size: 10pt;">Genesis is built into most of the state-of-the-art safety features, such as a forward collision <br>
				avoidance assist system with pedestrian detection.<br>
 				Because there's nothing more important to Genesis than the driver,<br>
 				 the passenger, and the people with you.</h3>
        </div>
        <div class="imga-cover"></div>
    </div>
  <div style="height: 100px;"></div>
 
  
   
<div style="width:60%; display: inline-block;">
   <video autoplay loop muted style="position:relative; left: 10%; top: 0px; width:80%;"> 
        	<source src="${path}/resources/video/SAFETY.mp4" type="video/mp4" />
        </video>
</div>
 	 <div style="display: inline-block; width: 25%; ">
 	
	 <h1 style="text-align: center;">Better cognitive skills.</h1>
	<div style="height: 80px;"></div>
	<p style="text-align: center; color:#cc6666; font-size:8pt;">Forward Collision Prevention Assist</p>
	<div style="height: 80px;"></div>
	<p style="text-align: center; font-size: 10pt;">With pedestrian detection, the Forward Collision Prevention Assist <br>
 									(FCAA)* protects pedestrians, passengers and<br>
 									 pedestrians around the vehicle, as well as <br>
 									 vehicles that are slow or stationary in front of the vehicle.</p>
 	<p style="text-align: center; color:#333333; font-size:8pt;">Smart Cruise Control with STOP & GO Function</p>
 	<p style="text-align: center; color:#333333; font-size:8pt;">lane keeping assist system</p>
 	<p style="text-align: center; color:#333333; font-size:8pt;">Rear Side Crash Alarm</p>								 
 <hr> 

 </div>
  
   
						      <!-- Modal button -->
    <div class="popup-icon">
      <button id="modBtn" class="modal-btn"><img src="${path}/resources/img/contact-icon.png" alt=""></button>
    </div>  

 	
 	<div style="height: 100px;"></div>
  <%--  
  	<h1 style="text-align: center;">SPECIFICATIONS</h1>
     
     
     <div class="sun">
     <div style="height: auto; width: 100%; border-bottom:1px solid #663333;">
     <select name='fruits'>
  <option value='G70 2.0T AWD' selected>G70 2.0T AWD</option>
  <option value='G70 2.0T RWD'>G70 2.0T RWD</option>
  <option value='G70 2.0T RWD MANUAL'>G70 2.0T RWD MANUAL</option>
  <option value='G70 3.3T AWD'>G70 3.3T AWD</option>
  <option value='G70 3.3T RWD'>G70 3.3T RWD</option>
</select>
</div>

<div style="width: 10%; height: 100px;" >
 <img src="${path}/resources/img/1.png" >
	<ul style="list-style-type:none;">
		<li>Wheel base</li>
		<li>Length</li>
		<li>Width</li>
		<li>Height</li>
	
	
	</ul>

</div>


</div>
 --%>


<div style="height: 100px;"></div>


    <!-- Modal -->
    <div id="modal" class="modal">
      <!-- Modal Content -->
      <div class="modal-content">
        <!-- Modal Header -->
        <div class="modal-header">
          <h3 class="header-title" align="left" style="margin-left:35%; margin-bottom:50px;">QnA</h3>
          <div class="close-btn"><img src="${path}/resources/img/close_contact.png" alt=""></div>    
        </div>
        <!-- Modal Body -->
        <div class="modal-body">
          <div class="col-md-6 col-md-offset-3">
            <form id="contact" action="${path}/board/write.do" method="post">
                <div class="row">
                    <div class="col-md-12">
                      <fieldset>
                        <input name="writer" type="text" value="${sessionScope.userid}" class="form-control" id="name" placeholder="Your name..." required
                           style="background-color: white; color: black;" readonly="readonly">
                      </fieldset>
                    </div>
                    <div class="col-md-12">
                      <fieldset>
                        <input name="title" type="text" class="form-control" id="email" placeholder="Title" required
                           style="background-color:white; color: black;">
                      </fieldset>
                    </div>
                    <div class="col-md-12">
                      <fieldset>
                        <textarea name="content" rows="6" class="form-control" id="message" placeholder="Your message..." required
                           style="background-color:white; color: black;"></textarea>
                      </fieldset>
                    </div>
                    <div class="col-md-12">
                      <fieldset>
                        <button type="submit" id="form-submit" class="btn">Send Message Now</button>
                      </fieldset>
                    </div>
                </div>
            </form>
          </div>
        </div>
      </div>
    </div>

   

  

<%@ include file="../include/menu.jsp" %>
<%@ include file="../include/footer.jsp" %>






    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="resources/js/vendor/jquery-1.11.2.min.js"><\/script>')</script>

    <script src="${path}/resources/js/vendor/bootstrap.min.js"></script>
    
    <script src="${path}/resources/js/plugins.js"></script>
    <script src="${path}/resources/js/main.js"></script>

    
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<%@ include file="include/header.jsp" %>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>GNSS</title>

        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="${path}/apple-touch-icon.jpg">

        <link rel="stylesheet" href="${path}/resources/css/bootstrap.min.css">
        <link rel="stylesheet" href="${path}/resources/css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="${path}/resources/css/fontAwesome.css">
        <link rel="stylesheet" href="${path}/resources/css/light-box.css">
        <link rel="stylesheet" href="${path}/resources/css/style-home.css">

        <link href="https://fonts.googleapis.com/css?family=Kanit:100,200,300,400,500,600,700,800,900" rel="stylesheet">

        <script src="${path}/resources/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
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

    <div id="video-container">
        <div class="video-overlay"></div>
        <div class="video-content">
            <div class="inner">
              <h4>GENESIS</h4>
              <h1>STUDIO <br>ANSEONG </h1>
              <p>THE BRAND SPACE THAT CONTAINS GENESIS <br>ASPIRATIONS FOR CONTINUOUS INNOVATION.</p>
                <div class="scroll-icon">
                    <a class="scrollTo" data-scrollTo="portfolio" href="#"><img src="${path}/resources/img/scroll-icon.png" alt=""></a>
                </div>    
            </div>
        </div>
        <video autoplay loop muted>
           <source src="${path}/resources/video/The GENESIS GV80 Commercial Film (30s).mp4" type="video/mp4" />
        </video>
    </div>

<div class="sec1" style="position: relative; margin-top:80px;">
	<div>
		<div class="sec-overlay">
			<div class="sec-text" style="text-align:right; position:absolute; margin-top:250px; margin-left:75%; margin-right:80px;">
				<h1 style="font-size:60px;">WE'RE IN THIS<br>TOGETHER.</h1>
				<p style="font-size:24px; color:#FFCE8B;">INTRODUCE GENESIS</p>
				<p style="font-size:17px;"><br><br><br>
				
			</div>
			<a href="#"><img src="${path}/resources/img/g70-wide-2.jpg" align="left" style="position:relative; width:75%; height:auto;"></a>
		</div>
	</div>
</div>

<div class="sec1" style="position: relative; margin-top:80px;">
	<div>
		<div class="sec-overlay">
			<div class="sec-text" style="position:absolute; margin-top:950px; margin-left:80px;">
				<h1 style="font-size:30px;">ALL NEW 2021<br>GENESIS G80</h1>
				<p style="font-size:24px; color:#FFCE8B;">STARTING AT $47,700</p>
				<p style="font-size:17px;">Pushing the boundaries of conventional luxury, the all-new Genesis G80<br>
				was designed to change everything you knew about sedans. With its<br>
				bold lines and stunning technology, the 2021 G80 is as intelligent as it is<br>
				striking. Coming fall 2020.<br><br><br>
				<a href="#">view more</a>
				
			</div>
			<a href="#"><img src="${path}/resources/img/g80-dark1.jpg" align="right" style="position:relative; height:600px; width:auto;"></a>
		</div>
	</div>
</div>   
		


    <div align="center" style="margin-top:1550px;"><hr style="width:90%;">
       <h1 style="margin-top:50px;">OUR MODELS</h1>
       <p style="font-size:16px; color:#979797;">Explore Genesis vehicle line-up with its dynamic yet elegant design and cutting-edge technology.
      <br>
      <p style="margin-top:40px; color:#979797;">GENESIS
    </div>
<!-- cutting -->
    <div class="full-screen-portfolio" id="portfolio" >
        <div class="container-fluid">
            <div class="col-md-4 col-sm-6">
                <div class="portfolio-item">
                    <a href="${path}/resources/img/g70.jpg" data-lightbox="image-1"><div class="thumb">
                        <div class="hover-effect">
                            <div class="hover-content">
                                <h1>G70</h1>
                                <p>Transcending from its young and sophisticated <br>
                                look as a luxury mid-size sedan in 2017, <br>
                                the new Genesis G70 has enhanced its Genesis design identity,<br>
                              becoming reborn as a luxury performance sedan.</p>
                            </div>
                        </div>
                        <div class="image">
                            <img src="${path}/resources/img/g70.jpg">
                        </div>
                    </div></a>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="portfolio-item">
                    <a href="${path}/resources/img/g80.jpg" data-lightbox="image-1"><div class="thumb">
                        <div class="hover-effect">
                            <div class="hover-content">
                                <h1>G80</h1>
                                <p>With the blend of advanced safety technology,<br> 
                                a variety of new features,<br>  elegant and dynamic 
                                design,<br>  the All-new Genesis G80 is born.</p>
                            </div>
                        </div>
                        <div class="image">
                            <img src="${path}/resources/img/g80.jpg">
                        </div>
                    </div></a>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="portfolio-item">
                    <a href="${path}/resources/img/g90.jpg" data-lightbox="image-1"><div class="thumb">
                        <div class="hover-effect">
                            <div class="hover-content">
                                <h1>G90</h1>
                                <p>With extraordinary attention given to <br>
                                the smallest of details, elegance is in every <br>
                                aspect of the G90 - <br>
                                seen best in person.</p>
                            </div>
                        </div>
                        <div class="image">
                            <img src="${path}/resources/img/g90.jpg">
                        </div>
                    </div></a>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="portfolio-item">
                    <a href="${path}/resources/img/gv70.jpg" data-lightbox="image-1"><div class="thumb">
                        <div class="hover-effect">
                            <div class="hover-content">
                                <h1>GV70</h1>
                                
                                <p>Inspired by the design philosophy of <br>
                                'Athletic Elegance', the GV70 features<br>
                                 a sporty and powerful appearance.<br>
                                 COMING SOON</p>
                            </div>
                        </div>
                        <div class="image">
                            <img src="${path}/resources/img/gv70.jpg">
                        </div>
                    </div></a>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="portfolio-item">
                    <a href="${path}/resources/img/gv80.jpg" data-lightbox="image-1"><div class="thumb">
                        <div class="hover-effect">
                            <div class="hover-content">
                                <h1>GV80</h1>
                                <p>The GV80, the first SUV by Genesis,<br> 
                                begins a new journey with its unique athletic<br>
                                 elegance, progressive philosophy and vision <br>
                                 inspired by you.</p>
                            </div>
                        </div>
                        <div class="image">
                            <img src="${path}/resources/img/gv80.jpg">
                        </div>
                    </div></a>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="portfolio-item">
                    <a href="${path}/resources/img/genesis.jpg" data-lightbox="image-1"><div class="thumb">
                        <div class="hover-effect">
                            <div class="hover-content">
                                <h1> <em> </em></h1>
                                <p>   </p>
                            </div>
                        </div>
                        <div class="image">
                            <img src="${path}/resources/img/genesis.jpg">
                        </div>
                    </div></a>
                </div>
            </div>
        </div>
<!-- cutting -->

<%@ include file="include/footer.jsp" %>
   

      <!-- Modal button -->
    <div class="popup-icon">
      <button id="modBtn" class="modal-btn"><img src="${path}/resources/img/contact-icon.png" alt=""></button>
    </div>  

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
        </div>
    <%@ include file="include/menu.jsp" %>
    
  

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="${path}/resources/js/vendor/jquery-1.11.2.min.js"><\/script>')</script>

    <script src="${path}/resources/js/vendor/bootstrap.min.js"></script>
    
    <script src="${path}/resources/js/plugins.js"></script>
    <script src="${path}/resources/js/main.js"></script>

    
</body>
</html>
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

         <div><img src="${path}/resources/images/shop.jpg" width="100%"> </div>

          <div style="text-align : center; background-color: black;" >
          
          <h1 style="color: white;">location</h1><br>
          
         <a href="https://www.google.com/maps/place/909+Coit+Rd+%23101,
         +Plano,+TX+75075+%EB%AF%B8%EA%B5%AD/@33.0120736,-96.769625,
         17z/data=!3m1!4b1!4m5!3m4!1s0x864c226a4b734929:0x26a1f04167f6dcc0!8m2!
         3d33.0120736!4d-96.7674363">
         <img src="${path}/resources/images/shop-1.jpg" width="30%" ></a> <br>
         <h3 style="color: white;">909 Coit Rd #101, Plano, TX 75075 (USA)</h3>
         
         <a href="https://www.google.com/maps/place/Genesis/@-20.8065759,114.
         9897201,4z/data=!4m8!1m2!2m1!1sAustralia,genesis!3m4!1s0x6b12af44017acea3:
         0xb4e077c00d7331a5!8m2!3d-33.8691514!4d151.2081281">
         <img src="${path}/resources/images/shop-2.jpg" width="30%" ></a><br>
         <h3 style="color: white;">Pitt St Mall, Shop 3/185 Pitt St, Sydney NSW 2000 (Australia)</h3>
         
         <a href="https://www.google.com/maps/place/
         %EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C+
         %EA%B0%95%EB%82%A8%EA%B5%AC+%EB%8C%80%EC%B9%98%EB%8F%99+
         %EC%98%81%EB%8F%99%EB%8C%80%EB%A1%9C+410/@37.506054,127.0650011,18.75z/
         data=!4m5!3m4!1s0x357ca43f6a5fc0eb:0xd9a15c4e85de6791!8m2!3d37.5058869!4d127.0654352">
         <img src="${path}/resources/images/shop-3.jpg" width="30%" ></a><br>
         <h3 style="color: white;">410, Yeongdong-daero, Gangnam-gu, Seoul, (Republic of Korea)</h3>
        
         <a href="https://www.google.com/maps/place/630+Queen+St+E,
         +Toronto,+ON+M4M+1G3+%EC%BA%90%EB%82%98%EB%8B%A4/@43.6584754
         -79.3548168,17z/data=!3m1!4b1!4m5!3m4!1s0x89d4cb6b83bcf187:
         0xbc9492334cec5c36!8m2!3d43.6584754!4d-79.3526281">
         <img src="${path}/resources/images/shop-4.jpg" width="30%" ></a><br>
         <h3 style="color: white;">630 Queen St E, Toronto, ON M4M 1G3 (Canada)</h3>
         </div>
         

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



    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="${path}/resources/js/vendor/jquery-1.11.2.min.js"><\/script>')</script>

    <script src="${path}/resources/js/vendor/bootstrap.min.js"></script>
    
    <script src="${path}/resources/js/plugins.js"></script>
    <script src="${path}/resources/js/main.js"></script>
<%@ include file="../include/menu.jsp" %>
<%@ include file="../include/footer.jsp" %>
</body>
</html>
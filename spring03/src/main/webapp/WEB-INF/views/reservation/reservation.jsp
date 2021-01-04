<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <link rel="apple-touch-icon" href="apple-touch-icon.jpg">

        <link rel="stylesheet" href="${path}/resources/css/bootstrap.min.css">
        <link rel="stylesheet" href="${path}/resources/css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="${path}/resources/css/fontAwesome.css">
        <link rel="stylesheet" href="${path}/resources/css/light-box.css">
        <link rel="stylesheet" href="${path}/resources/css/style-home.css">
        <link href="https://fonts.googleapis.com/css?family=Kanit:100,200,300,400,500,600,700,800,900" rel="stylesheet">

        <script src="${path}/resources/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>

<script>
function drawImage() {
    var found = null;
    var sel = document.getElementById("models");
    var img = document.getElementById("modelimg");
    for(var i=0; i<sel.length; i++) 
    {
        if(sel[i].selected == true) 
        {
            found = sel[i];
            break; 
        }
    }
    img.src = found.value;
}
</script>
</head>
<body style="background-color:white;">
    <nav>
        <div class="logo">
            <a href="${path}"><img src="${path}/resources/img/genesis-logo-img.png" 
            style="height:40px; width:auto;">
               <em></em>
            </a>
             <p style="float:right; margin-top:20px; font-size:20px">${sessionScope.name} 
        </div>
        <div class="menu-icon">
        <span></span>
      </div>
    </nav>
<div>
	<h1 style="color:white; position: absolute; margin-top:430px; margin-left:50px; font-size:90px;">Reservation</h1>
	<img src="${path}/resources/img/long.jpg" style="width:100%; ">
</div>



<div class="wrap" style="background-color:white; 
	float:left; margin-left:10%; margin-bottom:50px; width:80%; heiht:100%;">

	<div class="res-left" style="position:relative; margin-left:20px;">
		<h2 style="font-size:25px; color:grey">1. Select the Genesis you want.</h2>
	</div>
		<div>
			<select name="op1" id="models" onchange="drawImage()" style="margin-top:30px; margin-left:20px; float:left; width:35%; height:30px; font-size:14px; position: relative;">
			    <option value="${path}/resources/img/g70.png">2021 GENESIS G70</option>
			    <option value="${path}/resources/img/g90.png">2021 GENESIS G90</option>
			    <option value="${path}/resources/img/gv80.png">2021 GENESIS GV80</option>
			    <option value="${path}/resources/img/g80s.png">2020 GENESIS G80 SPORT</option>
			    <option value="${path}/resources/img/g80.png">2020 GENESIS G80</option>
			</select>
			<br>
			<img id="modelimg" src="${path}/resources/img/g70.png" alt="" style="margin-top:30px; width:50%; float:right; margin-right:30px;">
		</div>
		<br>
		<form method="post" action="${path}/reservation/insert.do">
	<div class="res-right" style="position:relative; margin-left:20px; margin-top:70px;">
		<h2 style="font-size:25px; color:grey">2. About bookers.</h2>
			<div style="position:relative; margin-top:30px; 
				width:100%; font-size:14px;">
	            User id :<br>
	            	<input type="text" name="userid" value="${sessionScope.userid}" readonly="readonly"><br>
	            User name :<br>
	            	<input type="text" name="name" value="${sessionScope.name}" readonly="readonly"><br>
	            Email : <br> 
	            	<input type="text" name="email" value="${sessionScope.email}"><br>
	            Phone : <br> 
	            	<input type="tel" pattern="(010)-\d{3,4}-\d{4}" name="hp" title="010-####-####" required><br>
	            Model : <br>
	            	<select name="op1">
						<option value="2021 GENESIS G70">2021 GENESIS G70 </option>
						<option value="2021 GENESIS G80">2021 GENESIS G80 </option>
						<option value="2021 GENESIS G90">2021 GENESIS G90 </option>
						<option value="2021 GENESIS GV80">2021 GENESIS GV80 </option>
						<option value="2021 GENESIS G80 SPORT">2021 GENESIS G80 SPORT&nbsp;</option>    	
	            	</select>
	            	<br> 
	            Address : <br> 
	            	<select name="address">
						<option value="USA">USA</option>
						<option value="CANADA">CANADA</option>
						<option value="KOREA">KOREA</option>
						<option value="AUSTRALIA">AUSTRALIA &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
					</select> <br>
	            Other option : <br> 
	            	<input type="text" name="memo"><br>
	            	<input type="text" id="chk" name="chk" value="미확인" hidden="">
	<div align="center" style="float:left; width:100%; margin-top:50px;">          
		<input type="submit" value="Confirm">
	</div> 
			</div>
			<br>
	</div>

</div>
		</form>

<%@ include file="../include/footer.jsp" %>  

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
          <h3 class="header-title">Say hello to <em>Highway</em></h3>
          <div class="close-btn"><img src="${path}/resources/img/close_contact.png" alt=""></div>    
        </div>
        <!-- Modal Body -->
        <div class="modal-body">
          <div class="col-md-6 col-md-offset-3">
            <form id="contact" action="" method="post">
                <div class="row">
                    <div class="col-md-12">
                      <fieldset>
                        <input name="name" type="text" class="form-control" id="name" placeholder="Your name..." required>
                      </fieldset>
                    </div>
                    <div class="col-md-12">
                      <fieldset>
                        <input name="email" type="email" class="form-control" id="email" placeholder="Your email..." required>
                      </fieldset>
                    </div>
                    <div class="col-md-12">
                      <fieldset>
                        <textarea name="message" rows="6" class="form-control" id="message" placeholder="Your message..." required></textarea>
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

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="${path}/resources/js/vendor/jquery-1.11.2.min.js"><\/script>')</script>

    <script src="${path}/resources/js/vendor/bootstrap.min.js"></script>
    
    <script src="${path}/resources/js/plugins.js"></script>
    <script src="${path}/resources/js/main.js"></script>

    
</body>
</html>
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
        <link rel="apple-touch-icon" href="${path}/apple-touch-icon.jpg">

        <link rel="stylesheet" href="${path}/resources/css/bootstrap.min.css">
        <link rel="stylesheet" href="${path}/resources/css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="${path}/resources/css/fontAwesome.css">
        <link rel="stylesheet" href="${path}/resources/css/light-box.css">
        <link rel="stylesheet" href="${path}/resources/css/templatemo-style.css">
        <link rel="stylesheet" href="${path}/resources/css/style-home.css">

        <link href="https://fonts.googleapis.com/css?family=Kanit:100,200,300,400,500,600,700,800,900" rel="stylesheet">

        <script src="${path}/resources/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
        
        
<!-- ---------------------------------------------------------------------- -->
<style type="text/css">
.mypage-box{
margin-bottom:80px;
color: black;
width: auto;
}
#mypage-container  {
  position: relative;
  width: 100%;
  height: 100%;
  overflow: hidden;
  z-index: 1;
}

#mypage-container{
  height: 100%;
  width: 100%;
  display: flex;
  justify-content: flex-start;
  align-items: center;
  flex-flow: column wrap;
}
#mypage-innercontainer{
  position: relative;
  background-color: white;
  width: auto;
  height: auto;
  overflow: hidden;
  z-index: 1;
  display: flex;
  padding: 50px 50px;
  justify-content: center;
  align-items: center;
  flex-flow: column wrap;
}


.submit-box{
align: right;
padding-top: 2px;
padding-right: 10px;
color: black;
}
.value-box{
margin-right: 0px;

}
.value-box td{
padding: 10px;
}

.reservation-box{

}
.rvcontent{
text-align: center;
border-top: 1px solid #6D6D6D;
padding: 5px;
padding-right: 10px;
}
.rvcontent-box{
text-align: center;
padding: 5px;
padding-right: 10px;
}

.myupdate{
    padding:2px 5px; 
    background:#DDDDDD; 
    border:0 none;
    cursor:pointer;
    -webkit-border-radius: 5px;
    border-radius: 5px; 
    margin-right: 80px;

}
.mydelet{
    padding:2px 5px; 
    background:#DDDDDD; 
    border:0 none;
    cursor:pointer;
    -webkit-border-radius: 5px;
    border-radius: 5px; 
}

.update-group{
align: center;
position: relative;
left: 80px;
}
.myinfo{
text-align: center;
margin: 20px;
font-size: 20px;
color: black;
}
</style>


<!-- ---------------------------------------------------------------------- -->
        
        
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

<!-- ---------------------------------------------------------------------- -->



	<img style="height: auto; width: 100%;"  src="${path}/resources/img/mypagetop-1.jpg">
	<div id="mypage-container">
	<div id="mypage-innercontainer">

		<div class="mypage-box">
				<div class="myinfo" style="text-align: center; margin: 20px; font-size: 20px; color: black;">
					<h>MY INFO</h>
				</div>

				<form id="update" class="update-group" name="update1" method="post" action="${path}/member/update.do">			
				<table class="value-box">				
					<tr><td>ID</td><td><input type="id" name="userid" value="${sessionScope.userid}" style="border: 0" readonly="readonly"></td></tr>
					<tr><td>NAME</td><td><input type="text" name="name" value='${sessionScope.name}' onfocus="this.value='${sessionScope.name}';this.style.color='red';" style="color:#5D5D5D"></td></tr>
					<tr><td>PASSWORD</td><td><input type="password" name="passwd" value='${sessionScope.passwd}' onfocus="this.value='${sessionScope.passwd}';this.style.color='red';" style="color:#5D5D5D"></td></tr>
					<tr><td>ADDRESS</td><td><input type="text" name="address" value='${sessionScope.address}' onfocus="this.value='${sessionScope.address}';this.style.color='red';" style="color:#5D5D5D"></td></tr>
					<tr><td>EMAIL</td><td><input type="email" name="email" value='${sessionScope.email}' onfocus="this.value='${sessionScope.email}';this.style.color='red';" style="color:#5D5D5D" required></td></tr>
					<tr><td>JOIN DATE</td><td>${sessionScope.join_date}</td></tr>
				</table>
				
				<div class="submit-box" align="right">
					<input class="myupdate" type="submit" value="UPDATE">
				</div>				
			</form>			
		
				<div class="reservation-box">
				<div style="margin-top: 60px;">
			<h>MY RESERVATION</h>
			</div>
			<table>
				<tr>
					<th style="padding: 10px; margin: 10px;">NO</th>
					<th style="padding: 10px; margin: 10px;">ID</th>
					<th style="padding: 10px; margin: 10px;">NAME</th>
					<th style="padding: 10px; margin: 10px;">EMAIL</th>
					<th style="padding: 10px; margin: 10px;">HP</th>
					<th style="padding: 10px; margin: 10px;">TYPE</th>
					<th style="padding: 10px; margin: 10px;">ADDRESS</th>
					<th style="padding: 10px; margin: 10px;">MEMO</th>
					<th style="padding: 10px; margin: 10px;">CHECK</th>
				</tr>
					<c:forEach var="row" items="${list}">  
  							<tr>
    							<td class="rvcontent">${row.idx} </td>
    							<td class="rvcontent">${row.userid} </td>
    							<td class="rvcontent">${row.name} </td>
    							<td class="rvcontent">${row.email} </td>
							    <td class="rvcontent">${row.hp} </td>
    							<td class="rvcontent">${row.op1} </td>
    							<td class="rvcontent">${row.address} </td>
    							<td class="rvcontent">${row.memo} </td>
    						    <c:if test="${row.chk == '확인'}">
    							<td class="rvcontent" style="color: green;">${row.chk} </td>
    							</c:if>
    							<c:if test="${row.chk == '미확인'}">
							    <td class="rvcontent" style="color: red;">${row.chk} </td>
    							</c:if>
  							</tr>
						</c:forEach>  
	
					</table>
				</div>
		
		
		</div>




	</div>

	</div>








	<!-- ---------------------------------------------------------------------- -->
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
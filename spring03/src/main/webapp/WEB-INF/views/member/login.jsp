<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="../include/header.jsp" %>
<html>
    <head>

        <title>Login/Join</title>
        <link rel="stylesheet" href="${path}/resources/css/style-login.css">
        <style type="text/css">
        body {
	background-image: url(${path}/resources/images/loginmain.jpg) ;
    background-repeat: no-repeat;
    background-size: cover;
    height:100%;
	width:auto;
}

        </style>
    </head>
    
    <body bgcolor="black">
    <div style="margin-top:10px; margin-left:10px;">
        <a href="${path}"><img src="${path}/resources/img/genesis-logo-text.png"  width="85px"></a>
    </div>
    <div>
    	<div>
        <div class="wrap">
        
<div class="form-wrap">
                <div class="button-wrap">
                    <div id="btn"></div>
                    <button type="button" class="togglebtn" onclick="login()">&nbsp;LOGIN</button>
                    <button type="button" class="togglebtn" onclick="register()">&nbsp;&nbsp;JOIN</button>
                </div>
                <form id="login" class="input-group" name="form1" method="post" action="${path}/member/login_check.do" style="margin-top:60px;">
                    <input type="text" name="userid" id="userid" class="input-field" placeholder="Enter id" required>
                    <input type="password" name="passwd" id="passwd" class="input-field" placeholder="Enter Password" required>
                    <input type="submit" class="submit" id="btnLogin" value="Login" style="margin-top:90px;">
                </form>
               
               
              
              <c:if test="${userid == null}">
                <form id="register" action="${path}/member/idcheck.do" class="input-group" method="post" style="margin-top:75px;">
                    <input type="text" class="input-field" name="userid" placeholder="Id" required>
                    <input type="submit" class="submit" value="CHECK" style="margin-top:100px;"> 
                </form>
              </c:if>

              <c:if test="${userid != null}">
              <form id="register" action="${path}/member/insert.do" class="input-group" method="post" style="margin-top:15px;">
                    <input type="id" class="input-field" name="userid" placeholder="Id" value="${userid}" readonly="readonly" required>
                     <input type="text" class="input-field" name="name" placeholder="User name" required>
                     <input type="password" class="input-field" name="passwd" placeholder="Passwd" required>
                    <input type="email" class="input-field" name="email" placeholder="Your Email" required>
                   <input type="submit" class="submit" value="REGISTER" style="margin-top:35px;"> 
                </form> 
              </c:if>
   
            </div>
    	</div>
        </div></div>
        <script>
        var x = document.getElementById("login");
        var y = document.getElementById("register");
        var z = document.getElementById("btn");
        
        
        function login(){
            x.style.left = "50px";
            y.style.left = "450px";
            z.style.left = "0";
        }

        function register(){
            x.style.left = "-400px";
            y.style.left = "50px";
            z.style.left = "110px";
        }
        </script>
      

        
    </body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="../include/header.jsp" %>
<html>
    <head>

        <title>Find your information</title>
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
    
    <body>
    <div align="center" style="margin-top:100px">
        <a href="${path}"><img src="${path}/resources/images/genesis-logo-text.png"  width="150px" align="center"></a>
    </div>
    <div>
    	<div>
        <div class="wrap">
        
            <div class="form-wrap">
                <div class="button-wrap">
                    <div id="btn"></div>
                    <button type="button" class="togglebtn" onclick="login()">&nbsp;&nbsp;&nbsp;&nbsp;ID</button>
                    <button type="button" class="togglebtn" onclick="register()">&nbsp;&nbsp;&nbsp;PASSWD</button>
                </div>
                <form id="login" class="input-group" name="form1" method="post" action="${path}/member/findid.do" style="margin-top:60px;">
                    <input type="text" name="name" id="name" class="input-field" placeholder="Enter name" required>
                    <input type="email" name="email" id="email" class="input-field" placeholder="Enter email" required>
                    <input type="submit" class="submit" id="btnLogin" value="Find" style="margin-top:90px;">
                </form>
                <form id="register" action="${path}/member/findpasswd.do" class="input-group" method="post" style="margin-top:15px;">
                     <input type="text" class="input-field" name="name" placeholder="Enter name" required>
                    <input type="id" class="input-field" name="userid" placeholder="Enter id" required>
                    <input type="email" class="input-field" name="email" placeholder="Enter email" required>
                    <input type="submit" class="submit" value="Find" style="margin-top:85px;"> 
                </form>
                
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="true" %>
<%@ include file="../include/header.jsp" %>
 <section class="overlay-menu">
      <div class="container">
        <article>
          <div class="main-menu" style="float:left; width:40%">
             
                      <a href="#"><h3>MODELS</h3></a>
                      <a href="${path}/page/g70.do">G70</a>
                      <a href="${path}/page/g70.do">G80</a>
                      <a href="${path}/page/g70.do">G90</a>
                      <a href="${path}/page/g70.do">GV70</a>
                      <a href="${path}/page/g70.do">GV80</a>
                      <br><br>
                      <a href="#"><h3>MEMBERS</h3></a>
                      <a href="${path}/reservation/list.do">My Page</a>
                     <c:choose>
                       <c:when test="${sessionScope.userid == null}">
                      <a href="${path}/member/login.do">Login & Join Membership</a>
                       </c:when>
                       <c:otherwise>                     
                      <a href="${path}/member/logout.do">Logout</a>
                       </c:otherwise>
                     </c:choose>
                     <a href="${path}/member/find.do">Find Id & Passwd</a>
          </div>
          
          <div class="main-menu" style="float:left; width:40%">
              
                      <a href="#"><h3>GENESIS</h3></a>
                      <a href="${path}/page/g70.do">The Brand</a>
                      <a href="${path}/page/g70.do">Concept Car</a>
                      <a href="${path}/page/g70.do">Motor Show</a>
                      <br><br>
                      <a href="#"><h3>SUPPORT</h3></a>
                      <a href="${path}/board/list.do">Contact us</a>
                      <a href="${path}/page/location.do">Location</a>
                      <a href="${path}/board/list.do">Q & A</a>
                      <a href="${path}/reservation/reservation.do">Reservation</a>
                      <c:if test="${sessionScope.userid == 'admin'}">
                      <a href="${path}/reservation/adlist.do">Reservation Check</a>
                      </c:if>
          </div>
          
          <div class="main-menu" style="float:left; width:20%">
                      
                      <a href="#"><h3>CHANGE YOUR REGION</h3></a>
                      <a href="#">Change Region</a>
          </div>
          
        </article>
      </div>
      <p>GENESIS</p>
    </section>
    
    
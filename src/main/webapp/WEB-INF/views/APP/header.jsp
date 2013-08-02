<%@ page import="java.util.Enumeration"%>
<%@ page language="java"%>
<%@ page contentType="text/html; charset=utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="context_path" value="${pageContext.request.contextPath}" />
<spring:eval expression='pageContext.request.contextPath' var="contextPath" />
<!--[if lte IE 8]>
	<div class="alert alert-error">
		Internet Explorer 8 eller lavere er ikke støttet.<br><br>
		<a href="http://www.whatbrowser.org/intl/no/" class="btn btn-success">Vennligst last ned ny nettleser</a>
	</div>
<![endif]-->
 <div class="navbar">
   <div class="navbar-inner">
     <div class="container-fluid">
       <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
       </a>
        <div class="navbar-text pull-right">

		</div>
       <a class="brand" href="${contextPath}/">Hovinveien 39</a>
       <div class="nav-collapse collapse" style="height:0px">
         <ul class="nav pull-left">
           <li><a href="${contextPath}/">Reservasjon av terrasselokalet</a></li>
           <li><a href='<spring:url value="/kontakt"></spring:url>'>Kontakt</a></li>

         </ul>
       </div><!--/.nav-collapse -->
     </div>
   </div>
 </div>
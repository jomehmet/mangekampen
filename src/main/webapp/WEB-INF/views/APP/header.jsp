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
<!-- Static navbar -->
<div class="navbar navbar-static-top">
	<div class="container">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target=".nav-collapse">
			<span class="icon-bar"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="#">Mangekampen</a>
		<div class="nav-collapse collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Sesonger</a></li>
				<li><a href="#ovelser">Øvelser</a></li>
			</ul>
		</div>
		<!--/.nav-collapse -->
	</div>
</div>
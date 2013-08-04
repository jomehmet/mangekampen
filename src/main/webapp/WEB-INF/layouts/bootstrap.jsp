<%@ page import="java.util.Enumeration"%>
<%@ page language="java"%>
<%@ page contentType="text/html; charset=utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<%@ taglib tagdir="/WEB-INF/tags/util" prefix="util" %>

<!DOCTYPE html>
<html>  
	
	<jsp:directive.page pageEncoding="UTF-8" /> 
			
	<head>
		<title>Mangekampen</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<util:load-custom-scripts />		
	</head>
  	<body>
  		<tiles:insertAttribute name="header" ignore="true"/>
  		<div class="container" id="mainContainer" >
  			<tiles:insertAttribute name="body"/>
  			<tiles:insertAttribute name="footer"/>
  		</div>
	</body>
</html>


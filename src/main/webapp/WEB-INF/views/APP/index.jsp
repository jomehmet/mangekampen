<%@ page import="java.util.Enumeration"%>
<%@ page language="java"%>
<%@ page contentType="text/html; charset=utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<spring:eval expression='pageContext.request.contextPath' var="contextPath" />
<div class="row-fluid">
	<div class="span12" data-viewModel="viewModels/SesongerViewModel">
		<h1>Sesonger</h1>
		<table data-bind="foreach:sesonger()">
			<tr>
				<td><input type="text" data-bind="value:navn" /></td>
			</tr>
		</table>
		<input type="text" data-bind="value:itemToAdd" placeholder="Legg til en sesong.." />
	</div>
</div>

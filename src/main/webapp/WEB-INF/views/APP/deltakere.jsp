<%@ page import="java.util.Enumeration"%>
<%@ page language="java"%>
<%@ page contentType="text/html; charset=utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<spring:eval expression='pageContext.request.contextPath' var="contextPath" />

<div data-bind="with: sesongerViewModel" data-viewname="sesonger">
	<div class="row">
		<div class="col-lg-6">
			<h2>Sesonger</h2>
		</div>
	</div>
	<div data-bind="foreach:collection()">
		<div class="row aSesong" data-bind="visible: !removed()">
			<div class="col-lg-12 form-inline control">
				<input type="text" data-bind="value:navn" />
				<button data-bind="click:edit" class="btn">rediger</button>
				<button data-bind="click:remove" class="btn">slett</button>
			</div>
			<div class="col-lg-12 edit" data-bind="visible: isEdit">
				<h4>Øvelser</h4>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-lg-6">
			<input type="text" data-bind="value:itemToAdd" placeholder="Legg til en sesong.." />
		</div>
	</div>
</div>

<div data-bind="with: ovelserViewModel" style="display:none" data-viewname="ovelser">
	<div class="row">
		<div class="col-lg-6">
			<h2>Øvelser</h2>
		</div>
	</div>
	<div data-bind="foreach:collection()">
		<div class="row aSesong" data-bind="visible: !removed()">
			<div class="col-lg-12 form-inline control">
				<input type="text" data-bind="value:navn" />
				<button data-bind="click:edit" class="btn">rediger</button>
				<button data-bind="click:remove" class="btn">slett</button>
			</div>
			<div class="col-lg-12 edit" data-bind="visible: isEdit">
				<h4>Øvelser</h4>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-lg-6">
			<input type="text" data-bind="value:itemToAdd" placeholder="Legg til en øvelse..." />
		</div>
	</div>
</div>

<div data-bind="with: deltakereViewModel" style="display:none" data-viewname="deltakere">
	<div class="row">
		<div class="col-lg-6">
			<h2>Deltakere</h2>
		</div>
	</div>
	<div data-bind="foreach:collection()">
		<div class="row aSesong" data-bind="visible: !removed()">
			<div class="col-lg-12 form-inline control">
				<input type="text" data-bind="value:brukernavn" />
				<button data-bind="click:edit" class="btn">rediger</button>
				<button data-bind="click:remove" class="btn">slett</button>
			</div>
			<div class="col-lg-12 edit" data-bind="visible: isEdit">
				<h4>Øvelser</h4>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-lg-6">
			<input type="text" data-bind="value:itemToAdd" placeholder="Legg til en deltaker..." />
		</div>
	</div>
</div>

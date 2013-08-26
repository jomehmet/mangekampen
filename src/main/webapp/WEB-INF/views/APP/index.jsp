<%@ page import="java.util.Enumeration"%>
<%@ page language="java"%>
<%@ page contentType="text/html; charset=utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<spring:eval expression='pageContext.request.contextPath' var="contextPath" />

<div data-bind="with: sesongerViewModel" data-viewname="sesonger" style="display:none">

	<div data-bind="foreach:collection()">
		<div class="row aSesong" data-bind="visible: !isRemoved(), css:{edit:isEdit()}">
			<div class="col-lg-12 form-inline control">
				<span data-bind="text:navn, visible:!isEdit()"></span>
				<input type="text" data-bind="value:navn, visible:isEdit" style="display:none" />
				<button data-bind="click:edit" class="btn">rediger</button>
				<button data-bind="click:remove, visible:isEdit" style="display:none" class="btn">slett</button>
			</div>
			<div data-bind="visible:isEdit" style="display:none">
				<ul data-bind="foreach:ovelser">
					<li>
					<span data-bind="text:navn"></span>
					<a href="#" data-bind="click:$parent.removeOvelse">(fjern)</a>
					</li>
				</ul>
				<input data-bind="value:ovelseToAdd" placeholder="Legg til en øvelse" />
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

	<div data-bind="foreach:collection()">
		<div class="row aSesong" data-bind="visible: !isRemoved()">
			<div class="col-lg-12 form-inline control">
				<span data-bind="text:id" title="id"></span>
				<input type="text" data-bind="value:navn" placeholder="Navn" />
				<input type="text" data-bind="value:gruppeType" placeholder="Gruppetype" />
				<input type="text" data-bind="value:dato, datePicker:dato" placeholder="Dato" />
				<button data-bind="click:edit" class="btn">rediger</button>
				<button data-bind="click:remove" class="btn">slett</button>
			</div>
			<div data-bind="visible:isEdit" style="display:none">
				<ul data-bind="foreach:deltakelser">
					<li>
					<span data-bind="text:id"></span>
					<a href="#" data-bind="click:$parent.removeDeltakelse">(fjern)</a>
					</li>
				</ul>
				<select data-bind="options: $root.deltakereViewModel.collection, optionsText:'brukernavn', selectedOptions:deltakelserToAdd"
				multiple="true" ></select>
			</div>
		</div>
	</div>
</div>

<div data-bind="with: deltakereViewModel" style="display:none" data-viewname="deltakere">
	<div data-bind="foreach:collection()">
		<div class="row aSesong" data-bind="visible: !isRemoved()">
			<div class="col-lg-12 form-inline control">
				<span data-bind="text:id" title="id"></span>
				<span data-bind="text:created" title="Opprettet"></span>
				<input type="text" data-bind="value:brukernavn" placeholder="Brukernavn" />
				<input type="text" data-bind="value:fornavn" placeholder="Fornavn" />
				<input type="text" data-bind="value:etternavn" placeholder="Etternavn" />
				<button data-bind="click:edit" class="btn">rediger</button>
				<button data-bind="click:remove" class="btn">slett</button>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-lg-6">
			<input type="text" data-bind="value:itemToAdd" placeholder="Legg til et brukernavn" />
		</div>
	</div>
</div>
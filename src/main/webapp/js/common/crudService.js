define([],function(){
		
		var crudService = {};
		
		crudService.postObject = function(koObject, controller, successHandler){
			$.ajax({
				url: CONTEXT_PATH + controller,
				data: JSON.stringify(ko.mapping.toJS(koObject)),
				type: 'post',
				dataType: 'json',
				contentType: 'application/json',
				complete: successHandler
			});
		}

		crudService.putObject = function(koObject, controller, successHandler){
			$.ajax({
				url: CONTEXT_PATH + controller + '/' + koObject.id(),
				data: JSON.stringify(ko.mapping.toJS(koObject)),
				type: 'put',
				dataType: 'json',
				contentType: 'application/json',
				complete:successHandler
			});
		};
		
		crudService.deleteObject = function(koObject, controller, successHandler){
			$.ajax({
				url: CONTEXT_PATH + controller + '/' + koObject.id(),
				data: JSON.stringify(ko.mapping.toJS(koObject)),
				type: 'delete',
				dataType: 'json',
				contentType: 'application/json',
				complete:successHandler
			});
		};
		
		crudService.getObjects = function(self, controller, successHandler){
			$.getJSON(CONTEXT_PATH + controller, successHandler);
		};
	
	return crudService;
});




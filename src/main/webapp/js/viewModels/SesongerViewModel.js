define([],function(){
	function SesongerViewModel(){
		var self = this;
		
		this.sesonger = ko.observableArray();
		this.getSesonger = function(){
			getObjects(self, "sesongs");
		};

		this.itemToAdd = ko.observable("");
		
		this.itemToAdd.subscribe(function(value){
			if (self.itemToAdd() != "") {
				self.addSesong(value);
				self.itemToAdd("");
			}
		}); 
		
		this.addSesong = function(navn){
			var obj = {navn: ko.observable(navn)};
			postObject(obj, "sesongs");
			self.sesonger.push(obj);
		};
		
		(function init() {
			self.getSesonger();
		})();
	}
	return SesongerViewModel;
});

function postObject(koObject, controller){
	$.ajax({
		url: CONTEXT_PATH + controller,
		data: JSON.stringify(ko.mapping.toJS(koObject)),
		type: 'post',
		dataType: 'json',
		contentType: 'application/json' 
	});
}

function putObject(koObject, controller){
	$.ajax({
		url: CONTEXT_PATH + controller + '/' + koObject.id(),
		data: JSON.stringify(ko.mapping.toJS(koObject)),
		type: 'put',
		dataType: 'json',
		contentType: 'application/json' 
	});
};
function getObjects(self, controller){
	$.getJSON(CONTEXT_PATH + controller, function(data){
		self.sesonger(ko.mapping.fromJS(data));
		
		self.sesonger()().forEach(function(data){
			var sesong = data;
			sesong.navn.subscribe(function(object){
				putObject(sesong, controller);
			});		
		});
	});
};


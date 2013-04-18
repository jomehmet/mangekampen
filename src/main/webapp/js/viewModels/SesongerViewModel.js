define([],function(){
	function SesongerViewModel(){
		var self = this;
		
		this.sesonger = ko.observableArray();
		this.getSesonger = function(){
			getObjects(self, "sesongs");
		};
		
		(function init() {
			self.getSesonger();
		})();
	}
	return SesongerViewModel;
});

function putObject(koObject, controller){
	$.ajax({
		url: CONTEXT_PATH + controller,
		data: JSON.stringify(ko.mapping.toJS(koObject)),
		type: "put",
		dataType: 'json'
	});
}
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
}
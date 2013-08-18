define(["common/crudService","viewModels/ItemViewModel","viewModels/ItemsViewModel","viewModels/OvelserViewModel", "viewModels/OvelserViewModel"],
		function(crud, ItemViewModel, ItemsViewModel, OvelserViewModel, OvelseViewModel){
	
	function SesongViewModel(data){
		var controller = "sesongs";
		var self = this;
		$.extend(self, new ItemViewModel(controller, data, this));
		
		this.navn = ko.observable(data.navn);		
		this.navn.subscribe(function(newValue){
			self.updateObject();
		});
		
		this.ovelser = ko.observableArray(data.ovelser);
		
		this.ovelseToAdd = ko.observable("");
		this.ovelseToAdd.subscribe(function(value){
			if (self.ovelseToAdd() != "") {
				self.ovelser.push({navn:value});
				self.ovelseToAdd("");
				self.updateObject();
			}
		});
		this.removeOvelse = function(ovelse){
			self.ovelser.remove(ovelse);
			self.updateObject();
		};
	}
	
	function SesongerViewModel(){	
		$.extend(this, new ItemsViewModel("sesongs", SesongViewModel));

		this.getAll();
	}
	return SesongerViewModel;
});
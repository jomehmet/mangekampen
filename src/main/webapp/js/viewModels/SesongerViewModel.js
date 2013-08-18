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
	}
	
	function SesongerViewModel(){	
		$.extend(this, new ItemsViewModel("sesongs", SesongViewModel));

		this.getAll();
	}
	return SesongerViewModel;
});
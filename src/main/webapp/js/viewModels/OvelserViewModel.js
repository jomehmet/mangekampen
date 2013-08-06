define(["viewModels/ItemViewModel","viewModels/ItemsViewModel"],function(ItemViewModel, ItemsViewModel){
	
	function OvelseViewModel(data){
		var self = this;
		$.extend(self, new ItemViewModel("ovelses", data, this));
		
		this.navn = ko.observable(data.navn);		
		this.navn.subscribe(function(newValue){
			self.updateObject();
		});
		
	}
	
	function OvelserViewModel(){	
		$.extend(this, new ItemsViewModel("ovelses", OvelseViewModel));

		this.getAll();
	}
	return OvelserViewModel;
});
define(["viewModels/OvelseViewModel","viewModels/ItemsViewModel", "common/events"],function(OvelseViewModel, ItemsViewModel, events){
		
	function OvelserViewModel(ovelser, addHandler){	
		$.extend(this, new ItemsViewModel("ovelses", OvelseViewModel, addHandler));
		
		var self = this; 
		
		self.getAll();
		
		events.ViewChanged.subscribeTo(function(name){
			//self.removeAll();
			//self.getAll();
		});
	}
	return OvelserViewModel;
});
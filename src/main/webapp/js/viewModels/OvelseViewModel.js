define(["viewModels/ItemViewModel"],function(ItemViewModel){
	
	function OvelseViewModel(data){
		var self = this;
		$.extend(self, new ItemViewModel("ovelses", data, this));
		
		this.navn = ko.observable(data.navn);		
		this.navn.subscribe(function(newValue){
			self.updateObject();
		});
		
	}
	
	return OvelseViewModel;
});
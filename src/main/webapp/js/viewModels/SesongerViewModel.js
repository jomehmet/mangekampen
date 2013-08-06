define(["viewModels/ItemViewModel","viewModels/ItemsViewModel"],function(ItemViewModel, ItemsViewModel){
	
	function SesongViewModel(data){
		var self = this;
		$.extend(self, new ItemViewModel("sesongs", data, this));
		
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
define(["viewModels/ItemViewModel","viewModels/ItemsViewModel"],function(ItemViewModel, ItemsViewModel){
	
	function DeltakerViewModel(data){
		var self = this;
		$.extend(self, new ItemViewModel("deltakers", data, this));
				
		this.brukernavn = ko.observable(data.brukernavn);		
		this.brukernavn.subscribe(function(newValue){
			self.updateObject();
		});
		
		this.navn = function(value){
			self.brukernavn(value);
		};
	}
	
	function DeltakereViewModel(){	
		$.extend(this, new ItemsViewModel("deltakers", DeltakerViewModel));

		this.getAll();
	}
	return DeltakereViewModel;
});
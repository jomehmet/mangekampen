define(["viewModels/ItemViewModel","viewModels/ItemsViewModel"],function(ItemViewModel, ItemsViewModel){
	
	function DeltakerViewModel(data){
		var self = this;
		$.extend(self, new ItemViewModel("deltakers", data));
				
		this.brukernavn = ko.observable(data.brukernavn);		
		this.brukernavn.subscribe(function(newValue){
			self.updateObject();
		});
		
		this.fornavn = ko.observable(data.fornavn);		
		this.fornavn.subscribe(function(newValue){
			self.updateObject();
		});
		
		this.etternavn = ko.observable(data.etternavn);		
		this.etternavn.subscribe(function(newValue){
			self.updateObject();
		});
		
		this.navn = function(value){
			self.brukernavn(value);
		};
		
		this.created = ko.observable($.datepicker.formatDate( "yy/mm/dd", new Date(data.created)));
	}
	
	function DeltakereViewModel(){	
		$.extend(this, new ItemsViewModel("deltakers", DeltakerViewModel));

		this.getAll();
	}
	return DeltakereViewModel;
});
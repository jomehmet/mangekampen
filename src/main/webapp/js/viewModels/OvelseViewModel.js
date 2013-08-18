define(["viewModels/ItemViewModel"],function(ItemViewModel){
	
	function OvelseViewModel(data){
		var self = this;
		$.extend(self, new ItemViewModel("ovelses", data, this));
		
		this.navn = ko.observable(data.navn);		
		this.navn.subscribe(function(newValue){
			self.updateObject();
		});
				
		this.dato = ko.observable(data.dato? $.datepicker.formatDate( "mm/dd/yy", new Date(data.dato)): undefined);
		this.dato.subscribe(function(newValue){
			self.updateObject();
		});
		
		this.gruppeType = ko.observable(data.gruppeType);
		this.gruppeType.subscribe(function(newValue){
			self.updateObject();
		});
		
	}
	
	return OvelseViewModel;
});
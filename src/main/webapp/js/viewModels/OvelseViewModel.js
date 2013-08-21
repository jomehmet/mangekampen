define(["viewModels/ItemViewModel", "viewModels/DeltakelseViewModel"],function(ItemViewModel, DeltakelseViewModel){
	
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
		
		this.deltakelser = ko.observableArray(data.deltakelser);
		this.deltakelseToAdd = ko.observable();
		this.deltakelseToAdd.subscribe(function(deltaker){
				self.deltakelser.push(new DeltakelseViewModel(deltaker.id, 50));
				self.deltakelseToAdd();
				self.updateObject();
		});
		this.removeOvelse = function(ovelse){
			self.ovelser.remove(ovelse);
			self.updateObject();
		};
	}
	
	return OvelseViewModel;
});
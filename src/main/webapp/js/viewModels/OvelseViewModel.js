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
		this.deltakelserToAdd = ko.observableArray(data.deltakelser);
		this.deltakelserToAdd.subscribe(function(deltakelserToAdd){
				self.deltakelser(deltakelserToAdd);
				self.updateObject();
				console.log(deltakelserToAdd);
		});
		this.removeDeltakelse = function(deltakelse){
			self.deltakelser.remove(deltakelse);
			self.updateObject();
		};
	}
	
	return OvelseViewModel;
});
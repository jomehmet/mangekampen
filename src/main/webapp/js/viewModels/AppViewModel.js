define(["viewModels/SesongerViewModel", "viewModels/OvelserViewModel", "viewModels/DeltakereViewModel"],
		function(SesongerViewModel, OvelserViewModel, DeltakereViewModel){
	function AppViewModel(){
		var self = this;
		
		this.activeView = ko.observable("sesonger");
		
		this.sesongerViewModel = new SesongerViewModel();
		this.ovelserViewModel = new OvelserViewModel();
		this.deltakereViewModel = new DeltakereViewModel();
		
		this.changeView = function(activeView){
			self.activeView(activeView);
		};
		
	}
	return AppViewModel;
});
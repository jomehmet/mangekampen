define(["viewModels/SesongerViewModel", "viewModels/OvelserViewModel", "viewModels/DeltakereViewModel", "common/events"],
		function(SesongerViewModel, OvelserViewModel, DeltakereViewModel, events){
	function AppViewModel(){
		var self = this;
		
		this.activeView = ko.observable("deltakere");
		
		this.sesongerViewModel = new SesongerViewModel();
		this.ovelserViewModel = new OvelserViewModel();
		this.deltakereViewModel = new DeltakereViewModel();
		
		this.changeView = function(activeView){
			self.activeView(activeView);
			new events.ViewChanged(activeView).publish();
		};
		
		init:{
		}
		
	}
	return AppViewModel;
});
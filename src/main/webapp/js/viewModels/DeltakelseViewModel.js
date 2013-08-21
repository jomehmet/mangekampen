define([],function(){
	
	function DeltakelseViewModel(deltakerId, resultat){
		
		this.deltaker = {id: deltakerId};
		this.resultat = resultat;
	}
	
	return DeltakelseViewModel;
});
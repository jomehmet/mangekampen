define(["viewModels/GenericViewModel"],function(genericViewModel){
	function SesongerViewModel(){
		$.extend(this, new genericViewModel("sesongs"));
		var self = this;
	}
	return SesongerViewModel;
});
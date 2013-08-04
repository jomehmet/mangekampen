define(["viewModels/GenericViewModel"],function(genericViewModel){
	function OvelsesViewModel(){
		$.extend(this, new genericViewModel("ovelses"));
		var self = this;
	}
	return OvelsesViewModel;
});
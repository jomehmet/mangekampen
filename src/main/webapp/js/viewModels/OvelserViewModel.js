define(["viewModels/OvelseViewModel","viewModels/ItemsViewModel"],function(OvelseViewModel, ItemsViewModel){
		
	function OvelserViewModel(ovelser, addHandler){	
		$.extend(this, new ItemsViewModel("ovelses", OvelseViewModel, addHandler));
		
		if(ovelser)
			this.addAll(ovelser);
		else
			this.getAll();
	}
	return OvelserViewModel;
});
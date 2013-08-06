define(["common/crudService"],function(crud){
		
	function ItemViewModel(controller, data, inheritor){

		var self = this;
		
		this.id = ko.observable(data.id);
		
		this.updateObject = function(){
			crud.putObject(self, controller);
		};
		
		this.isRemoved = ko.observable(false);
		this.remove = function(){
			crud.deleteObject(self, controller, function(){
				self.isRemoved(true);
			});
		};
		
		this.isEdit = ko.observable(false);
		this.edit = function(){
			self.isEdit(!self.isEdit());
		};
		
		self = inheritor;
		
	}
	
	return ItemViewModel;
});


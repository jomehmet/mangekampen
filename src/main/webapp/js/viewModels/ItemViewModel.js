define(["common/crudService", "common/events"],function(crud, events){
		
	function ItemViewModel(controller, data, inheritor){

		var self = this;
		
		this.id = ko.observable(data.id);
		
		this.updateObject = function(){
			crud.putObject(self, controller, function(){;
				new events.ServerChanged().publish();
			});
		};
		
		this.isRemoved = ko.observable(false);
		this.remove = function(){
			crud.deleteObject(self, controller, function(){
				self.isRemoved(true);
				new events.ServerChanged().publish();
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


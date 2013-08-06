define(["common/crudService", "viewModels/ItemViewModel"],function(crud, ItemViewModel){
		
	function ItemsViewModel(controller, ItemViewModel){
		var self = this;
				
		this.collection = ko.observableArray();
		this.getAll = function(){
			crud.getObjects(self, controller, function(data){
				$.each(data, function(index, value) {
					self.collection.push(new ItemViewModel(value));
				});
			});
		};

		this.itemToAdd = ko.observable("");
		
		this.itemToAdd.subscribe(function(value){
			if (self.itemToAdd() != "") {
				self.add(value);
				self.itemToAdd("");
			}
		}); 
		
		this.add = function(navn){
			var obj = new ItemViewModel({navn:navn, brukernavn:navn});
			crud.postObject(obj, controller, function(data){
				self.collection.removeAll();
				self.getAll();
			});
		};
		
		return this;
	}
	return ItemsViewModel;
});
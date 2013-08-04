define(["common/crudService"],function(crud){
	var crud = crud;
		
	function ItemsViewModel(controller){
		var self = this;
		
		function ItemViewModel(data){

			var self = this;
			
			this.id = ko.observable(data.id);
			this.navn = ko.observable(data.navn);

			this.navn.subscribe(function(object){
				crud.putObject(self, controller);
			});
			
			this.removed = ko.observable(false);
			
			this.remove = function(){
				crud.deleteObject(self, controller, function(){
					self.removed(true);
				});
			};
			
			this.isEdit = ko.observable(false);
			
			this.edit = function(){
				self.isEdit(!self.isEdit());
			};
		}
		
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
			var obj = {navn: ko.observable(navn)};
			crud.postObject(obj, controller, function(data){
				self.collection.removeAll();
				self.getAll();
			});
		};
		
		(function init() {
			self.getAll();
		})();
		
		return this;
	}
	return ItemsViewModel;
});
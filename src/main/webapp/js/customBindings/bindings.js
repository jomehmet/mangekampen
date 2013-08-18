ko.bindingHandlers.changeView = {
    init: function(element, valueAccessor, allBindingsAccessor, viewModel) {
    	
    	var self = this;
    	
    	var value = valueAccessor(), allBindings = allBindingsAccessor();
    	
    	self.setActiveMenu = function(name){
    		$(".nav.navbar-nav").find(".active").removeClass("active");
    		$("[href='#"+ name +"']").parent().addClass("active");
    		$("[data-viewname]").hide();
    		$("[data-viewname='"+ name +"']").show();
    		viewModel.changeView(name);
    	};
    	
    	$elm = $(element);
    	$elm.click(function(){
    		self.setActiveMenu(value);
    	});
		if(location.hash)
			self.setActiveMenu(location.hash.replace("#",""));
    }
};

ko.bindingHandlers.datePicker = {
	    init: function(element, valueAccessor, allBindingsAccessor, viewModel) {

	    	var value = valueAccessor(), allBindings = allBindingsAccessor();
	    	
	    	$elm = $(element);
	    	
	    	$elm.datepicker({ dateFormat: "dd/mm/yy"});
	    }
	};
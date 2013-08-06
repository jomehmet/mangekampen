ko.bindingHandlers.changeView = {
    init: function(element, valueAccessor, allBindingsAccessor, viewModel) {
    	var value = valueAccessor(), allBindings = allBindingsAccessor();
    	
    	$elm = $(element);
    	$elm.click(function(){
    		$(".nav.navbar-nav").find(".active").removeClass("active");
    		$(this).parent().addClass("active");
    		$("[data-viewname]").hide();
    		$("[data-viewname='"+ value +"']").show();
    		viewModel.changeView(value);
    	});
    }
};
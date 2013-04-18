define([], function () {
    $ = jQuery;

    var loader =
    {
        loadViewModel: function () {
            $("*[data-viewmodel]").each(function () {
                var target = this,
                    viewModelName = $(target).attr("data-viewmodel"),
                    initObjectName = $(target).attr("data-initObject");

                require([viewModelName], function (ViewModel) {
                    var init;
                    if (initObjectName && initObjectName in window) {
                        init = window[initObjectName];
                    }
                    else if (initObjectName && initObjectName.indexOf("{") == 0) {
                        try {
                            init = JSON.parse(initObjectName);
                        }
                        catch (e) {
                        }
                    }
                    var viewModel = new ViewModel(init);
                    ko.applyBindings(viewModel, target);
                });
            });
        }

    };
    return loader;
});
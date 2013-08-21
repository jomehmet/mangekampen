define(["common/pubsub"], function (pubsub) {

    var events = [
        function ServerChanged() {
        	
        },
        function ViewChanged(name){
        	this.name = name;
        }
    ];
    
    return pubsub.extend(events);

});
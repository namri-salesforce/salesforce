({
	fireAppEvent : function(component, event, helper) {
        var appEvent = $A.get("e.c:LE_ApplicationEvent");
        appEvent.setParams({
            "message" : "value from Application Event Notifier" 
          });
        appEvent.fire();
		
	}
})
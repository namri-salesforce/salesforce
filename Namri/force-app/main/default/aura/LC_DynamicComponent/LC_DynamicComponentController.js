({
	doInit : function(component, event, helper) {
        $A.createComponent(
            "lightning:button",
            {
                "aura:id" : "findableAuraId",
                "label" : "Click Me",
                "onclick" : component.getReference("c.handleClick")
            },
            function(newButton, status, errorMessage){
                if(status=="SUCCESS")
                {
                    var body = component.get("v.body");
                    body.push(newButton);
                    component.set("v.body",body);
                }
                else if(status=='INCOMPLETE'){
                    console.log('No response from server');
                }
                    else if(status=='ERROR'){
                        console.log('error' +errorMessages);
                    }
                
            }
        );
		
	},
    handleClick : function(component, event, helper){
      component.set("v.message","Button Clicked");
}
})
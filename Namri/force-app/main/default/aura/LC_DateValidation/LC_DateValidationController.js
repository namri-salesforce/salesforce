({
	myAction : function(component, event, helper) {
		var inputCmp = component.find("inputCmp");
        var value = inputCmp.get("v.value");
        //is not a numeric
        if(isNaN(value)){
            inputCmp.set("v.errors",
                         [{message:"Input is not a numeric" +value}]);
        }
        else{
            inputCmp.set("v.errors", null);
        }
	}
})
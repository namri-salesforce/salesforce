trigger TR_9725_EG2_DiscountBookPrice on Library__c (before insert)
{  
    List<Library__c> Lib = Trigger.New; 
    CLTR_0725_EG2_DiscountBookPrice.calcdisc(Lib);
    
    //the same can done by class and method like above..
    //do not use any logics in trigger it has to be in the method
    //List<Library__c> Lib = Trigger.New;
    //for(Library__c EB:Lib)
    //{
    //    EB.Price__c*=0.9;  //X*=Y this expression will multiply x with y and reassign x with new value in our case the discount is 10%
   // }
}
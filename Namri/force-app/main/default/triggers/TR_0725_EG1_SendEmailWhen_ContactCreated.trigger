trigger TR_0725_EG1_SendEmailWhen_ContactCreated on Contact (after insert,after update) 
{
   //the below class can be called if insert happens or update happens by using if else
    
     if(Trigger.isInsert)
     {
         CLTR_0725_EG1_SendEmail_ContCrted.sendEmailInsert('Lucky');
     }
     else if(Trigger.isUpdate)
     {
         CLTR_0725_EG1_SendEmail_ContCrted.sendEmailUpdate('ANI');  
     }
     
      
    //CLTR_0725_EG1_SendEmail_ContCrted.sendEmailInsert('Lucky');
    //CLTR_0725_EG1_SendEmail_ContCrted.sendEmailUpdate('ANI');
    
    // the same code can be written in a class and called from here and also
    // we can use separate methods for contact creation and updation.
    
    // Messaging.SingleEmailMessage M1 = new Messaging.SingleEmailMessage();
   // List<string> toaddr = new List<string>{'vsmusunuri21@gmail.com'};
    //List<string> ccaddr = new List<string>{'venkatsmusunuri@gmail.com','namri.salesforce@gmail.com'}; 
     //  M1.setToAddresses(toaddr);
      // M1.setCcAddresses(ccaddr);
        //M1.setSubject('Apex-Trigger-Contact Created or Updated');
        //M1.setPlainTextBody('We noticed that an contact has been created or Updated');
    
    //List<Messaging.Email> SE = new List<Messaging.Email>{M1};
        
     //   Messaging.sendEmail(SE);
}
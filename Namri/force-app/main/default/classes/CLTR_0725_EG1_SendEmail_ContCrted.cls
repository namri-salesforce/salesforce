public class CLTR_0725_EG1_SendEmail_ContCrted
{
    public static void sendEmailInsert(string Name)
    {
    Messaging.SingleEmailMessage M1 = new Messaging.SingleEmailMessage();
    List<string> toaddr = new List<string>{'vsmusunuri21@gmail.com'};
    List<string> ccaddr = new List<string>{'venkatsmusunuri@gmail.com','namri.salesforce@gmail.com'}; 
        M1.setToAddresses(toaddr);
        M1.setCcAddresses(ccaddr);
        M1.setSubject('Dear '+Name +' Apex-Trigger-Contact Created');
        M1.setPlainTextBody('We noticed that an contact has been created');
    
    List<Messaging.Email> SE = new List<Messaging.Email>{M1};
        
        Messaging.sendEmail(SE);
    }
    Public static void sendEmailUpdate(string Name)
    {
        Messaging.SingleEmailMessage M1 = new Messaging.SingleEmailMessage();
    List<string> toaddr = new List<string>{'vsmusunuri21@gmail.com'};
    List<string> ccaddr = new List<string>{'venkatsmusunuri@gmail.com','namri.salesforce@gmail.com'}; 
        M1.setToAddresses(toaddr);
        M1.setCcAddresses(ccaddr);
        M1.setSubject('Dear '+Name +' Apex-Trigger-Contact Updated');
        M1.setPlainTextBody('We noticed that an contact  Updated');
    
    List<Messaging.Email> SE = new List<Messaging.Email>{M1};
        
        Messaging.sendEmail(SE);
    }
}
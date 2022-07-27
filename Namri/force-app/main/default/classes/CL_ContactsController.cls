public class CL_ContactsController {

    @AuraEnabled
    public static List<contact> getcontacts(Id recordId){
        //List<contact>ConList = new List<contact>();
        return [SELECT Id, FirstName, LastName, Email, Phone 
                   FROM Contact WHERE AccountId =: recordId];
       // return ConList;
    }
}
public class CL_AccountController
{
    @AuraEnabled
    //this commented to see develop branch
    public static List<Account> getaccounts()
    {
        List<Account> accList = new List<Account>();
        accList = [select Id,Name from Account limit 10];
        return accList;	
    }
}
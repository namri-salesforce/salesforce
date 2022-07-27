public class AccountClass_ActionFunction_AjaxTag
{
    public Account Acctobj{get;set;}
         public AccountClass_ActionFunction_AjaxTag()    
     {
         Acctobj=new Account();
     }
    public pagereference saveAccount()
    {
        insert Acctobj;
        return new pagereference('/'+Acctobj);
    }
}
public class ShowRelatedContacts_ActionStatus 
{
    public List<Contact> conList{get;set;}
    public List<SelectOption> acctNames{get;set;}
    public string selectedAcct{get;set;}
    
    public ShowRelatedContacts_ActionStatus()
    {
        conList = new List<Contact>();
        acctNames = new List<SelectOption>();
       // acctNames.add(new SelectOption('','--None--'));  this statement and statement in line 12 are same. here we are directly adding
       // selectoption to accNames variablelist whereas in the below we are assigining a variable list and then adding to the acctNames var
        
        SelectOption selectop = new SelectOption('','--None--');
        acctNames.add(selectop);
        
        for(Account acctobj:[select id, Name from Account limit 20])
          {
              acctNames.add(new SelectOption(acctobj.id,acctobj.Name));
          }
    }
        public pagereference retrievecontacts()
        {
            if(selectedAcct!='')
            {
                conList=[select id, name, email from Contact where AccountId= :selectedAcct];
            }
            return null;
        }
}
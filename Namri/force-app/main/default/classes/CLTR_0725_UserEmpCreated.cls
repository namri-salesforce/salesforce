public class CLTR_0725_UserEmpCreated 
{
     public static void createEmp(set<id> uidc)
    {
        List<User> NewUList = [select FirstName,LastName,Email,Phone from user where id in :uidc];
        List<Employee__c> EmpListTobeInserted = new List<Employee__c>();
          for(User EU:NewUlist)
          {
              Employee__c EMP = new Employee__c();
              EMP.Employee_First_Name__c = EU.FirstName;
              EMP.Employee_Last_Name__c = EU.LastName;
              EMP.Employee_Email__c = EU.Email;
              EMP.Employee_Phone__c = EU.Phone;
              EMP.Name = EU.FirstName + ''+EU.LastName;
              EmpListTobeInserted.add(EMP);
          }
              Insert EmpListTobeInserted;
    }
}
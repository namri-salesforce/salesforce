trigger TR_9725_EG3_ConinsertPhEmail on Contact (before insert)
{
   List<Contact> conList = Trigger.New;
   List<contact> conlistTobeInserted = new List<contact>();
       for(Contact newconList:conList)
   {
       if(newconList.Phone=='')
       {
           newconList.Phone='9999';
           //conlistTobeInserted.add(newconlist);
           //insert conlistTobeInserted;
       }
     //  else if(newconList.Email=='')
    //   {
    //       newconList.Email='no@email.com';
    //   }
   }
       
}
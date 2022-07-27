trigger TR_9725_EG4_UserEmpCreated on User (after insert) 
{
     //List<User> UList = Target.new; this will return all the fields in the object which we dont need all of them
     //to get to particular fields we need to use newmap
     
    Map<id,user> UList = Trigger.NewMap;
    Set<id> Uid=Ulist.keyset();
    CLTR_0725_UserEmpCreated.createEmp(Uid);
    
}
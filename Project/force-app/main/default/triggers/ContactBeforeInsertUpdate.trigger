trigger ContactBeforeInsertUpdate on Contact (before insert, before update) {
// Trigger.New hold new version of Contacts
    for(Contact cont: Trigger.new){
        if(trigger.isInsert){
            cont.Description = 'Record created successfully by using ContactBeforeInsert trigger';
        }
        if(trigger.isUpdate){
            cont.Description = 'Record updated successfully by '+ userInfo.getUserName() ;
        }
        }
// No Need to write DML statement, trigger. New will be take care.
}
public with sharing class TriggerContextVariablesBuilder {

    private TriggerContextVariables     tcvariables;
    
   
    public       TriggerContextVariablesBuilder()
   {
       
         tcvariables = new TriggerContextVariables(Trigger.isBefore, Trigger.isAfter, Trigger.isDelete, 
                                                   Trigger.isInsert, Trigger.isUpdate, Trigger.isUndelete,
                                                   Trigger.isExecuting,Trigger.old,Trigger.new, 
                                                   Trigger.oldMap, Trigger.newMap);
      
    } 

  public TriggerContextVariables     build(){ 
        return tcvariables;
   }

 }
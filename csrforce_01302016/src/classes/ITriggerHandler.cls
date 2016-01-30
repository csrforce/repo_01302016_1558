public interface ITriggerHandler {
    /** 
     @description Called by the trigger framework to carry out the actions before the bulk operations.
    */
    void bulkBefore();
    
    /** 
     @description Called by the trigger framework to carry out the actions after the bulk operations.
    */
    void bulkAfter();
    
    /** 
     @description Called by the trigger framework to carry out the actions after completing the bulk operations.
    */
    void andFinally();
    
    /** 
     @description Called by the trigger framework to carry out the actions before the records are inserted.
    * @param TriggerContextVariables Contains the trigger parameters which includes the records that is getting inserted.
    */
    void beforeInsert(TriggerContextVariables tp);
    
    /** 
    
    * @description Called by the trigger framework to carry out the actions before the records are updated. 
    * @param TriggerContextVariables Contains the trigger parameters which includes the records that is getting updated.
    */
    void beforeUpdate(TriggerContextVariables tp);
    
    /** 
    * @description Called by the trigger framework to carry out the actions before the records are deleted.
    * @param TriggerContextVariables Contains the trigger parameters which includes the records that is getting deleted.
    */
    void beforeDelete(TriggerContextVariables tp);
    
    /** 
    * @description Called by the trigger framework to carry out the actions after the records are inserted.
    * @param TriggerContextVariables Contains the trigger parameters which includes the records that got inserted.
    */
    void afterInsert(TriggerContextVariables tp);
    
    /** 
    * @description Called by the trigger framework to carry out the actions before the records are updated.
    * @param TriggerContextVariables Contains the trigger parameters which includes the records that got updated.
    */
    void afterUpdate(TriggerContextVariables tp);
    
    /** 
    * @description Called by the trigger framework to carry out the actions after the records got deleted.
    * @param TriggerContextVariables Contains the trigger parameters which includes the records that got deleted.
    */
    void afterDelete(TriggerContextVariables tp);
    
    /** 
    * @description Called by the trigger framework to carry out the actions after the records are undeleted.
    * @param TriggerContextVariables Contains the trigger parameters which includes the records that got undeleted.
    */
    void afterUnDelete(TriggerContextVariables tp);
}
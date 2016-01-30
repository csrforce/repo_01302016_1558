/**
* @description This class implements the ITriggerDispatcher and acts as an adapter to avoid implementing all the 
*               ITriggerDispatcher methods.
* @return Feedback__c The newly created feedback object.
*/
public virtual class TriggerHandlerBase implements ITriggerHandler{ 
    
    private static ITriggerHandler beforeInserthandler;
    private static ITriggerHandler beforeUpdatehandler;
    private static ITriggerHandler beforeDeleteHandler;
    private static ITriggerHandler afterInserthandler;
    private static ITriggerHandler afterUpdatehandler;
    private static ITriggerHandler afterDeleteHandler;
    private static ITriggerHandler afterUndeleteHandler;

    
    /** 
         @description This method is called prior to execution of a before trigger event. If you want 
                    to load any lookup data or cache the data, then this is the place that you need 
                    to put your code. 
    */
    public virtual void bulkBefore() {}

    /** 
     @description This method is called prior to execution of an after trigger event. 
    */
    public virtual void bulkAfter() {}

    /** 
    
    * @description This method is called for records to be inserted during a BEFORE trigger.
    */
    public virtual void beforeInsert(TriggerContextVariables tp) {}

    /** 
    
    * @description This method is called for records to be updated during a BEFORE trigger.
    */
    public virtual void beforeUpdate(TriggerContextVariables tp) {}

    /** 
    
    * @description This method is called for records to be deleted during a BEFORE trigger.
    */
    public virtual void beforeDelete(TriggerContextVariables tp) {}

    /** 
    
    * @description This method is called for records inserted during an AFTER trigger. Always put field validation 
    *               in the 'After' methods in case another trigger has modified any values. The record is 'read only' 
    *               at this point.
    */
    public virtual void afterInsert(TriggerContextVariables tp) {} 

    /** 
    
    * @description This method is called iteratively for each record updated during an AFTER trigger.
    */
    public virtual void afterUpdate(TriggerContextVariables tp) {}

    /** 
    
    * @description This method is called iteratively for each record deleted during an AFTER trigger.
    */
    public virtual void afterDelete(TriggerContextVariables tp) {}
    
    /** 
    
    * @description This method is called prior to execution of a AFTER UNDELETE trigger. 
    */
    public virtual void afterUnDelete(TriggerContextVariables tp) {}
    
    public virtual void andFinally() {}
    
    /** 
    * @description Called by the event handlers. If this is the first call in the context, then this method will create a new 
    *               instance of the appropriate handler and execute the mainEntry method. If there is an existing call runing 
    *               on the same context, then this method will use the existing handler instance created by the original call
    *               and execute the inProgressEntry method.
    * @param ITriggerHandler The trigger handler instance. The dispatcher need to pass an instance of the trigger handler, such
    *                           as AccountAfterInsertTriggerHandler if this is the first call in a given context. If it is retry,
    *                           then the dispatcher will need to pass null.
    * @param TriggerParameters The trigger parameters passed by the framework.
    * @param TriggerParameters.TriggerEvent The trigger event.
    */
   /* protected void execute(ITriggerHandler handlerInstance, TriggerContextVariables tcv, TriggerContextVariables.TriggerEvent tEvent) {
        if(handlerInstance != null) {
            if(tEvent == tcv.TriggerEvent.beforeInsert)
                beforeInsertHandler = handlerInstance;
            if(tEvent == tcv.TriggerEvent.beforeUpdate)
                beforeUpdateHandler = handlerInstance;
            if(tEvent == tcv.TriggerEvent.beforeDelete)
                beforeDeleteHandler = handlerInstance;
            if(tEvent == tcv.TriggerEvent.afterInsert)
                afterInsertHandler = handlerInstance;
            if(tEvent == tcv.TriggerEvent.afterUpdate)
                afterUpdateHandler = handlerInstance;
            if(tEvent == tcv.TriggerEvent.afterDelete)
                afterDeleteHandler = handlerInstance;
            if(tEvent == tcv.TriggerEvent.afterUnDelete)
                afterUndeleteHandler = handlerInstance;
            handlerInstance.mainEntry(tcv);
            handlerInstance.updateObjects();
        }
        else {
            if(tEvent == tcv.TriggerEvent.beforeInsert)
                beforeInsertHandler.inProgressEntry(tcv);
            if(tEvent == tcv.TriggerEvent.beforeUpdate)
                beforeUpdateHandler.inProgressEntry(tcv);
            if(tEvent == tcv.TriggerEvent.beforeDelete)
                beforeDeleteHandler.inProgressEntry(tcv);
            if(tEvent == tcv.TriggerEvent.afterInsert)
                afterInsertHandler.inProgressEntry(tcv);
            if(tEvent == tcv.TriggerEvent.afterUpdate)
                afterUpdateHandler.inProgressEntry(tcv);
            if(tEvent == tcv.TriggerEvent.afterDelete)
                afterDeleteHandler.inProgressEntry(tcv);
            if(tEvent == tcv.TriggerEvent.afterUnDelete)
                afterUndeleteHandler.inProgressEntry(tcv);
        }
        
    }*/
}
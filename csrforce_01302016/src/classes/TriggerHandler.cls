public virtual class TriggerHandler {

  // static map of handlername, times run() was invoked
  private static Map<String, LoopCount> loopCountMap;
  private static Set<String> bypassedHandlers;

  static {
    loopCountMap = new Map<String, LoopCount>();
    bypassedHandlers = new Set<String>();
  }

  public TriggerHandler() {

  }

  /***************************************
   * public methods
   ***************************************/

  // main method that will be called during execution
  public void run(TriggerContextVariables tcv)
  {
  
      if(!validateRun()) return;
   
    addToLoopCount();
    // dispatch to the correct handler method
    
    if(isBeforeInsert(tcv)) { 
      this.beforeInsert();
    } else if (isBeforeUpdate(tcv)) {
      this.beforeUpdate();
    } else  if (isBeforeDelete(tcv)) {
      this.beforeDelete();
    } else if (isAfterInsert(tcv)) {
        System.debug('***run method in TriggerHandler ***');
      this.afterInsert();
    } else if (isAfterUpdate(tcv)) {
      this.afterUpdate();
    } else if (isAfterDelete(tcv)) {
      this.afterDelete();
    } else if (isAfterUndelete(tcv)) {
      this.afterUndelete();
    }
   
  
  }
  
   protected boolean isBeforeInsert(TriggerContextVariables tcv) {
        return tcv.isBefore && tcv.isInsert;
    }
    
    protected boolean isBeforeUpdate(TriggerContextVariables tcv) {
        return tcv.isBefore && tcv.isUpdate;
    }
    protected boolean isBeforeDelete(TriggerContextVariables tcv) {
        return tcv.isBefore && tcv.isDelete;
    }
    protected boolean isAfterInsert(TriggerContextVariables tcv) {
        return tcv.isAfter && tcv.isInsert;
    }
    protected boolean isAfterUpdate(TriggerContextVariables tcv) {
        return tcv.isAfter && tcv.isUpdate;
    }
    protected boolean isAfterDelete(TriggerContextVariables tcv) {
        return tcv.isAfter && tcv.isDelete;
    }
    protected boolean isAfterUndelete(TriggerContextVariables tcv) {
        return tcv.isAfter && tcv.isUndelete;
    }
    
     

  public void setMaxLoopCount(Integer max) {
    String handlerName = getHandlerName();
    if(!TriggerHandler.loopCountMap.containsKey(handlerName)) {
      TriggerHandler.loopCountMap.put(handlerName, new LoopCount(max));
    } else {
      TriggerHandler.loopCountMap.get(handlerName).setMax(max);
    }
  }

  public void clearMaxLoopCount() {
    this.setMaxLoopCount(-1);
  }

  public static void bypass(String handlerName) {
    TriggerHandler.bypassedHandlers.add(handlerName);
  }

  public static void clearBypass(String handlerName) {
    TriggerHandler.bypassedHandlers.remove(handlerName);
  }

  public static Boolean isBypassed(String handlerName) {
    return TriggerHandler.bypassedHandlers.contains(handlerName);
  }

  public static void clearAllBypasses() {
    TriggerHandler.bypassedHandlers.clear();
  }

  /***************************************
   * private methods
   ***************************************/

  private void addToLoopCount() {
    String handlerName = getHandlerName();
    if(TriggerHandler.loopCountMap.containsKey(handlerName)) {
      Boolean exceeded = TriggerHandler.loopCountMap.get(handlerName).increment();
      if(exceeded) {
        Integer max = TriggerHandler.loopCountMap.get(handlerName).max;
        throw new TriggerHandlerException('Maximum loop count of ' + String.valueOf(max) + ' reached in ' + handlerName);
      }
    }
  }

  // make sure this trigger should continue to run
  private Boolean validateRun() {
    if(!Trigger.isExecuting) {
      throw new TriggerHandlerException('Trigger handler called outside of Trigger execution');
    }
    if(TriggerHandler.bypassedHandlers.contains(getHandlerName())) {
      return false;
    }
    return true;
  }

  private String getHandlerName() {
    return String.valueOf(this).substring(0,String.valueOf(this).indexOf(':'));
  }

  /***************************************
   * context methods
   ***************************************/

  // context-specific methods for override
  protected virtual void beforeInsert(){}
  protected virtual void beforeUpdate(){}
  protected virtual void beforeDelete(){}
  protected virtual void afterInsert(){}
  protected virtual void afterUpdate(){}
  protected virtual void afterDelete(){}
  protected virtual void afterUndelete(){}

  /***************************************
   * inner classes
   ***************************************/

  // inner class for managing the loop count per handler
  private class LoopCount {
    private Integer max;
    private Integer count;

    public LoopCount() {
      this.max = 1;
      this.count = 0;
    }

    public LoopCount(Integer max) {
      this.max = max;
      this.count = 0;
    }

    public Boolean increment() {
      this.count++;
      return this.exceeded();
    }

    public Boolean exceeded() {
      if(this.max < 0) return false;
      if(this.count > this.max) {
        return true;
      }
      return false;
    }

    public Integer getMax() {
      return this.max;
    }

    public Integer getCount() {
      return this.count;
    }

    public void setMax(Integer max) {
      this.max = max;
    }
  }

  // exception class
  public class TriggerHandlerException extends Exception {}

}
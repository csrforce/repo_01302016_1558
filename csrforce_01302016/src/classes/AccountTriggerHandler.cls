public virtual with sharing class AccountTriggerHandler extends TriggerHandler {

   public void method1(TriggerContextVariables p_tcv)
   {
     System.debug('***method1'+p_tcv);
     System.debug('***new list'+p_tcv.newList);
   
   }
 
  protected override  void beforeInsert() {
   // doSomeBeforeInsertStuff();
  }
  
   
  protected override  void beforeUpdate() {
    //setLostOppsToZero();
  }
  
  protected override void beforeDelete() {
    //doSomeBeforeDeleteStuff();
  }
  
   
  protected override void afterInsert() {
    System.debug('***after insert in AccountTriggerHandler ***');
    doSomeAfterInsertStuff();
  }
  
  

  protected override void afterUpdate() {
    //setLostOppsToZero();
  }
 
  
  protected override void afterDelete() {
    //doSomeStuffBeforeDelete();
  }
  
  protected void doSomeAfterInsertStuff(){
  
  System.debug('***in doSomeAfterInsertStuff***');
  
  }
  
 }
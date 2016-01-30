public with sharing class AccountHandler{

   public void method1(TriggerContextVariables p_tcv)
   {
     System.debug('***method1'+p_tcv);
     System.debug('***new list'+p_tcv.newList);
   
   }

}
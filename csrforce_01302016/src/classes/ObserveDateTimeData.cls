public with Sharing class ObserveDateTimeData
{

   public ObserveDateTimeData(){
       List<Student__c> lstStud=[select id,name,DOB__c from Student__c];
       String str1='';
       String str2='';
       for(Student__c objStud   :lstStud ){
          System.debug('name'+ objStud.name);
          System.debug('DOB'+ objStud.DOB__c);
          str1=String.valueOf(objStud.DOB__c);
          System.debug('str '+str1);
          String str2fmt=(objStud.DOB__c!=null)?objStud.DOB__c.format():'';
          System.debug('str2fmt '+str2fmt);
          
          
          
       
       }
   
   
   
   }

}
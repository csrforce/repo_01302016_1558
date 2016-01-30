public class ObjectTraverse{

    public void genericTraverse(List<SObject> lstMyObject,String strObjectType){
        for(SObject myObj:lstMyObject){
            System.debug('id***'+myObj.get('id'));
            System.debug('name***'+myObj.get('name'));
            System.debug('name***'+myObj.get('commonfld__c'));
             if(strObjectType=='Student__c'){
               System.debug('s1__c  ***'+myObj.get('s1__c'));
             }   
        }
    
    
    }
    
    public void retrieveCourses(){
     
     List<Course__c> lstCourses=[SELECT Id,Name,commonfld__c from Course__c];
     genericTraverse(lstCourses,'Course__c');
    
    
    }
    
    public void retrieveStudents(){
     
     List<Student__c> lstStudents=[SELECT Id,Name,commonfld__c,s1__c  from Student__c];
     genericTraverse(lstStudents,'Student__c');
    
    
    }

}
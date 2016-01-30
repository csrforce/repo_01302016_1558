public class SampStudCntrl{

    public List<Student__c> lstStud{get;set;}


    public SampStudCntrl(){
        retrieveStudRecords();

    }

    public void retrieveStudRecords(){
     lstStud=[select id,sname__c,s1__c,s2__c,s3__c from student__c];

    }
    
    


}
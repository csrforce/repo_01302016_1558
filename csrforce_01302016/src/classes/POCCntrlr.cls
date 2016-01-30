public class POCCntrlr
{
public Course__c crs{get;set;}
  public POCCntrlr(ApexPages.StandardController controller)
  {
  
  crs= (Course__c ) controller.getRecord();
  
  }

}
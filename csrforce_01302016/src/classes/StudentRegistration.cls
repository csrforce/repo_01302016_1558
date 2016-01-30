public Class StudentRegistration
{
  public String  m_studentName{get;set;}
  public String m_FathersName{get;set;}
  public String m_GSection{get;set;}
  public Date m_DOB{get;set;}
  public String  m_Hno{get;set;}
  public String  m_Street{get;set;}
  public String  m_City{get;set;}
  public String  m_Nationality{get;set;}
  public boolean  m_Sex{get;set;}
   
   
  public  StudentRegistration()
  {
  
  }
  
  public void InsertNewRecord()
  {
      tblStudent__c objStud =new tblStudent__c();
      objStud.StudentName__c=m_studentName;
      objStud.FathersName__c=m_FathersName;
      objStud.DOB__c    =m_DOB;
      objStud.Sex__c=m_Sex;
      objStud.GSection__c=m_GSection;
      objStud.HNo__c =m_Hno;
      objStud.Street__c=m_Street;
      objStud.City__c=m_City;
      objStud.Nationality__c =m_Nationality;
      
      try
      {
      insert objStud;
      }
      catch(Exception exc)
      {
      System.debug('###'+exc);
      }
   
  }
  
  
  
  

}
public class EditStudent
{
    public list<StudentWrapper> wraperlist=new list<StudentWrapper>();
    public class StudentWrapper
    {
        public Id StudId{get;set;}
        public String  StudentName{get;set;}
      public String FathersName{get;set;}
      public String GSection{get;set;}
      public Date DOB{get;set;}
      public String  Hno{get;set;}
      public String  Street{get;set;}
      public String  City{get;set;}
      public String  Nationality{get;set;}
      public boolean Sex{get;set;}
      public boolean studCheck{get;set;}
       
        public boolean editMode{get;set;}
        public boolean textMode{get;set;}
        
       
    }
    
     public EditStudent()
    {
    /*
        for(employee__c e:[select id,name,designation__c,joiningdate__c,Perminent__c,Department__c from employee__c  ])
        {
            EmployWrapper ew=new EmployWrapper();
            ew.empId=e.id;
            ew.empName=e.name;
            ew.designation=e.designation__c;
            ew.joiningdate=e.joiningdate__c;
            ew.empdept=e.department__c;
            ew.perminant=e.perminent__c;
            ew.empCheck=false;
            ew.editMode=false;
            ew.textMode=true;
            wraperlist.add(ew);
            
        }*/
        
         for(tblStudent__c objStudent:[select id,name,StudentName__c,FathersName__c,
                    DOB__c,Sex__c,GSection__c,HNo__c ,Street__c,
                    City__c,Nationality__c from  tblStudent__c  ])
        {
            StudentWrapper sw=new StudentWrapper();
            sw.StudId=objStudent.id;
            sw.StudentName=objStudent.StudentName__c;
            sw.FathersName=objStudent.FathersName__c;
            sw.GSection=objStudent.GSection__c;
            sw.Hno=objStudent.HNo__c;
            sw.Street=objStudent.Street__c;
             sw.City=objStudent.City__c;
              sw.Nationality=objStudent.Nationality__c;
            sw.studCheck=false;
            sw.editMode=false;
            sw.textMode=true;
            wraperlist.add(sw);
            
        }
        
        
    }
       
    public list<StudentWrapper> getStudent()
    {
        return wraperlist;
    }
    public void editStudent()
    {
        String sid=apexpages.currentPage().getParameters().get('empid');
        system.debug('eid::::::::::'+sid);
        for(StudentWrapper objSW:wraperlist)
        {
            system.debug('objEw.StudId:::::::::'+objSW.StudId);
            if(objSW.StudId==sid)
            {
                objSW.editMode=true;
                objSW.textMode=false;
            }
            
        }
        
    }
}

/*
public class EditPageblock 
{
    public list<EmployWrapper> wraperlist=new list<EmployWrapper>();
    public class EmployWrapper
    {
        public Id empId{get;set;}
        public string empName{get;set;}
        public string designation{get;set;}
        public date joiningdate{get;set;}
        public string empdept{set;get;}
        public boolean empCheck{get;set;}
        public boolean perminant{get;set;}
        public boolean editMode{get;set;}
        public boolean textMode{get;set;}
    }
    
     public EditPageblock()
    {
    
        for(employee__c e:[select id,name,designation__c,joiningdate__c,Perminent__c,Department__c from employee__c  ])
        {
            EmployWrapper ew=new EmployWrapper();
            ew.empId=e.id;
            ew.empName=e.name;
            ew.designation=e.designation__c;
            ew.joiningdate=e.joiningdate__c;
            ew.empdept=e.department__c;
            ew.perminant=e.perminent__c;
            ew.empCheck=false;
            ew.editMode=false;
            ew.textMode=true;
            wraperlist.add(ew);
        }
    }
       
    public list<employWrapper> getEmp()
    {
        return wraperlist;
    }
    public void editEmp()
    {
        String eid=apexpages.currentPage().getParameters().get('empid');
        system.debug('eid::::::::::'+eid);
        for(EmployWrapper objEw:wraperlist)
        {
            system.debug('objEw.empId:::::::::'+objEw.empId);
            if(objEw.empId==eid)
            {
                objEw.editMode=true;
                objEw.textMode=false;
            }
            
        }
        
    }
}

*/
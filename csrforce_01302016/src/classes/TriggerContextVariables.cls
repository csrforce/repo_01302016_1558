public class   TriggerContextVariables                
    {
           
        public String triggerObject {get; private set;}
        public Boolean isBefore {get; private set;}
        public Boolean isAfter {get; private set;}
        public Boolean isDelete {get; private set;}
        public Boolean isInsert {get; private set;}
        public Boolean isUpdate {get; private set;}
        public Boolean isUndelete {get; private set;}
        public Boolean isExecuting {get; private set;}
        public List<SObject> oldList {get; private set;}
        public List<SObject> newList {get; set;}
        public Map<Id, SObject> oldMap {get; private set;}
        public Map<Id, SObject> newMap {get; set;}
        
        public TriggerContextVariables()
        {
         
        }
        
        public TriggerContextVariables(Boolean ib, Boolean ia, Boolean id, Boolean ii, Boolean iu, Boolean iud,Boolean ie, 
                                      List<SObject> ol, List<SObject> nl, Map<Id, SObject> om, Map<Id, SObject> nm)
        {
            this.isBefore = ib;
            this.isAfter = ia;
            this.isDelete = id;
            this.isInsert = ii;
            this.isUpdate = iu;
            this.isUndelete =iud;
            this.isExecuting = ie;
            this.oldList = ol;
            this.newList = nl;
            this.oldMap = om;
            this.newMap = nm;
            
           
           this.triggerObject = getSObjectTypeName((this.oldList != null && this.oldList.size() > 0) ? this.oldList[0] : this.newList[0]);
             
        }
        
       
        
        public static String getSObjectTypeName(SObject so) {
                return so.getSObjectType().getDescribe().getName();
    }
        
       
    }
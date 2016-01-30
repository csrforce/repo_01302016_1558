public with sharing class BulkUploadCSVData {
    
    public string nameFile{get;set;} 
    public Blob contentFile{get;set;}
    private CSVUtils.CSVParser parser;
    
    public BulkUploadCSVData(){
    
    
    }
    
    public PageReference ReadFile(){
        try{
                if(contentFile!=null){
                        nameFile=contentFile.toString();
                        parser = new CSVUtils.CSVParser(nameFile, true);
                        parser.parse();
                }
           }catch(Exception exc){
           
           }
        
            return null;
    }
    
    
}
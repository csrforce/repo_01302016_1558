global with sharing class ReadAndPopulateBatch implements Database.batchable<String>, Database.Stateful
{
   private String m_csvFile;
   private Integer m_startRow;
   private Parser m_parser;
   private static final Integer SCOPE_SIZE = 100;
   public ReadAndPopulateBatch(){}
  // public static ID run(){....}
   global Iterable<String> start(Database.batchableContext batchableContext)
   {  Document doc = [SELECT id, body from document where id='01590000007AMiA'];
      Blob b =doc.body;

      m_csvFile=b.toString();
            System.debug('***b***'+b +'****m_csvFile***'+m_csvFile);
      
       return new CSVIterator(m_csvFile, Parser.CRLF);
   }
   global void execute(Database.BatchableContext batchableContext, List<String> scope)  
   {
       //TODO: Create a map with the column name and the position.
       System.debug('****execute***');
       String csvFile = '';
       for(String row : scope)
       {
          csvFile += row + Parser.crlf;
       }
       List<List<String>> csvLines = CSVReader.parseCSV(csvFile,true);
       System.debug('***csvLines***'+csvLines);
       //TODO: csvLines contains a List with the values of the CSV file.
       //These information will be used to create a custom object to
       //process it.
   }
   global void finish(Database.BatchableContext batchableContext){}
   
   global static String getDocumentQuery() {
        return 'SELECT Id, Name, Body FROM Document ' +
            'WHERE Name LIKE \'%import.csv\'';
    }
}
public class XmlStreamReaderDemo {
    public class Book {
     String name;
     String author;
   }
   public class Order{
     String WCSSPlant;
     String JobNo;
     String  StartTime;
     String  SchedDate;
     String  ProcessDescr;
     String  DeptDescr;
     String  EmpName;
   }
   
   
   public List<Book> listRecords = new List<Book>();
   public List<Order> lstOrder = new List<Order>();
   
   public  Order[] parseBooks(XmlStreamReader reader) {
     Book[] books = new Book[0]; 
     Order[] orders= new Order[0];   
      
     while(reader.hasNext()) { 
        //  Start at the beginning of the book and make sure that it is a book   
         if (reader.getEventType() == XmlTag.START_ELEMENT) {
            if ('Activity' == reader.getLocalName()) {              
                /*Book book = parseBook(reader);                                //  Pass the book to the parseBook method (below)     
                books.add(book);*/
                Order order= parseBook(reader);                                //  Pass the book to the parseBook method (below)     
                orders.add(order);
            }
         }
        reader.next();
     }
    return orders;
   }
   
   
   public Order    parseBook(XmlStreamReader reader) {
    Book book = new Book();
    Order order= new Order();
     //book.author = reader.getAttributeValue(null, 'author');
     while(reader.hasNext()) {
        if (reader.getEventType() == XmlTag.END_ELEMENT) {
           break;
        } else if (reader.getEventType() == XmlTag.CHARACTERS) {
           //book.name = reader.getText();
          /// book.name = getDecodedString(reader);
          System.debug('***contents***'+getDecodedString(reader));
        }
        reader.next();
     }
     return order;
   }
   
   public XmlStreamReaderDemo(string data){
        XmlStreamReader xsr = new XmlStreamReader(data);
        //listRecords = parseBooks(xsr);
        lstOrder = parseBooks(xsr);
        System.debug('***lstOrder*** '+lstOrder );
    }
    
   /* public void testBookParser() {
     String str = '<books><book author="Chatty">Foo bar</book>' +
        '<book author="Sassy">Baz</book></books>';
     XmlStreamReaderDemo callxml1 = new XmlStreamReaderDemo(str);
     system.debug('callxml1 callxml1 :'+callxml1);
     List<Lead> leadtoInsert = new List<Lead>();
     for(XmlStreamReaderDemo.Book b : callxml1.listRecords) {           
           Lead Ld = new Lead();
           ld.Company = 'x';
           ld.LastName = b.name;
           leadtoInsert.add(ld);         
        }
        system.debug('*********** ::: '+leadtoInsert.size());
        system.debug('*********** ::: '+leadtoInsert);
        if(leadtoInsert.size() >0){
       insert leadtoInsert;
   }
   }
   */
     String getDecodedString(Xmlstreamreader reader)
      {
        return EncodingUtil.urlDecode(reader.getText(), 'UTF-8').trim();
      }
}
public class MultipleColumns
{
 public list<list<account>> lstlstAccts{get;set;}

  public MultipleColumns()
 {

  manipulate();
  }
  
 
  
  public void manipulate()
  {
    List<Account> lstAllAccts=[SELECT name from Account order by name];
    
    List<Account> temp=new List<Account>();
    integer cnt=0;
    
    for(Account acct:lstAllAccts)
    {
      if(cnt!=25)
      {
           temp.add(acct);
           cnt++;
       }
      else
      { cnt=0;
        lstlstAccts.add(temp); 
      }   
    
    }
  
  }

}
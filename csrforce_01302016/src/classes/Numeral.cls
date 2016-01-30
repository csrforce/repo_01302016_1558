public class Numeral{

  integer data;

  public void initialize(){
     data=0;
  } 

  public void initialize(integer p_data){
     data=p_data;
  } 
  
   
  
  public void display(){
   System.debug('data'+data);
  }
  
  
  public void add(Numeral p1,Numeral p2){
      data=p1.data+p2.data;
 
  }
  
   public Numeral add(Numeral p){
       Numeral temp=new Numeral();
      temp.data=data+p.data;
      return temp;
 
  }
  
  
}
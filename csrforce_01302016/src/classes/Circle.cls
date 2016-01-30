Public class Circle{

   static decimal pi;
   Integer radius;
   
   public static void initialize(){
   System.debug('***initilaize***');
    pi=3.15;
   }
   
   public Circle(Integer radius){
      // this.pi=3.15;
      //Circle.pi=3.15;
       this.radius=radius;
   }
   
   public decimal calculateArea(){
      //return ( this.radius * this.radius * this.radius);
     return ( Circle.pi * this.radius * this.radius);
   }
   
   
   public static void start(){
      Circle.initialize();
      Circle c1 = new Circle(5);
      System.debug('Area**'+c1.calculateArea());
   
   }
   
 }
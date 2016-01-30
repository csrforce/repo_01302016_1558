public class Utilities
{

    public static String generateServiceHours(String strDay,String strOpeningTime,String strClosingTime,String strAdditionalOpeningTime,String strAdditionalClosingTime){

        string str='';
        if(strOpeningTime!=null && strOpeningTime!=''){
            str= strDay + ':  ' + strOpeningTime + ' - ' + strClosingTime;
            if(strAdditionalOpeningTime!=null && strAdditionalOpeningTime!=''){
                str+='  Addtl hrs:  '+strAdditionalOpeningTime +' - '+ strAdditionalClosingTime;
            }
       }
       return str;
   }

    

}
//Generated by wsdl2apex

public class soapSforceComSchemasClassCsgreeting {
    public class LogInfo {
        public String category;
        public String level;
        private String[] category_type_info = new String[]{'category','http://soap.sforce.com/schemas/class/CSGreeting',null,'1','1','false'};
        private String[] level_type_info = new String[]{'level','http://soap.sforce.com/schemas/class/CSGreeting',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/CSGreeting','true','false'};
        private String[] field_order_type_info = new String[]{'category','level'};
    }
    public class CSGreeting {
        public String endpoint_x = 'https://ap1.salesforce.com/services/Soap/class/CSGreeting';
        public Map<String,String> inputHttpHeaders_x;
        public Map<String,String> outputHttpHeaders_x;
        public String clientCertName_x;
        public String clientCert_x;
        public String clientCertPasswd_x;
        public Integer timeout_x;
        public soapSforceComSchemasClassCsgreeting.DebuggingHeader_element DebuggingHeader;
        public soapSforceComSchemasClassCsgreeting.SessionHeader_element SessionHeader;
        public soapSforceComSchemasClassCsgreeting.CallOptions_element CallOptions;
        public soapSforceComSchemasClassCsgreeting.DebuggingInfo_element DebuggingInfo;
        public soapSforceComSchemasClassCsgreeting.AllowFieldTruncationHeader_element AllowFieldTruncationHeader;
        private String DebuggingHeader_hns = 'DebuggingHeader=http://soap.sforce.com/schemas/class/CSGreeting';
        private String SessionHeader_hns = 'SessionHeader=http://soap.sforce.com/schemas/class/CSGreeting';
        private String CallOptions_hns = 'CallOptions=http://soap.sforce.com/schemas/class/CSGreeting';
        private String DebuggingInfo_hns = 'DebuggingInfo=http://soap.sforce.com/schemas/class/CSGreeting';
        private String AllowFieldTruncationHeader_hns = 'AllowFieldTruncationHeader=http://soap.sforce.com/schemas/class/CSGreeting';
        private String[] ns_map_type_info = new String[]{'http://soap.sforce.com/schemas/class/CSGreeting', 'soapSforceComSchemasClassCsgreeting'};
        public String hello(String strName) {
            soapSforceComSchemasClassCsgreeting.hello_element request_x = new soapSforceComSchemasClassCsgreeting.hello_element();
            soapSforceComSchemasClassCsgreeting.helloResponse_element response_x;
            request_x.strName = strName;
            Map<String, soapSforceComSchemasClassCsgreeting.helloResponse_element> response_map_x = new Map<String, soapSforceComSchemasClassCsgreeting.helloResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              'http://soap.sforce.com/schemas/class/CSGreeting',
              'hello',
              'http://soap.sforce.com/schemas/class/CSGreeting',
              'helloResponse',
              'soapSforceComSchemasClassCsgreeting.helloResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.result;
        }
    }
    public class AllowFieldTruncationHeader_element {
        public Boolean allowFieldTruncation;
        private String[] allowFieldTruncation_type_info = new String[]{'allowFieldTruncation','http://soap.sforce.com/schemas/class/CSGreeting',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/CSGreeting','true','false'};
        private String[] field_order_type_info = new String[]{'allowFieldTruncation'};
    }
    public class DebuggingHeader_element {
        public soapSforceComSchemasClassCsgreeting.LogInfo[] categories;
        public String debugLevel;
        private String[] categories_type_info = new String[]{'categories','http://soap.sforce.com/schemas/class/CSGreeting',null,'0','-1','false'};
        private String[] debugLevel_type_info = new String[]{'debugLevel','http://soap.sforce.com/schemas/class/CSGreeting',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/CSGreeting','true','false'};
        private String[] field_order_type_info = new String[]{'categories','debugLevel'};
    }
    public class CallOptions_element {
        public String client;
        private String[] client_type_info = new String[]{'client','http://soap.sforce.com/schemas/class/CSGreeting',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/CSGreeting','true','false'};
        private String[] field_order_type_info = new String[]{'client'};
    }
    public class helloResponse_element {
        public String result;
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/schemas/class/CSGreeting',null,'1','1','true'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/CSGreeting','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }
    public class SessionHeader_element {
        public String sessionId;
        private String[] sessionId_type_info = new String[]{'sessionId','http://soap.sforce.com/schemas/class/CSGreeting',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/CSGreeting','true','false'};
        private String[] field_order_type_info = new String[]{'sessionId'};
    }
    public class DebuggingInfo_element {
        public String debugLog;
        private String[] debugLog_type_info = new String[]{'debugLog','http://soap.sforce.com/schemas/class/CSGreeting',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/CSGreeting','true','false'};
        private String[] field_order_type_info = new String[]{'debugLog'};
    }
    public class hello_element {
        public String strName;
        private String[] strName_type_info = new String[]{'strName','http://soap.sforce.com/schemas/class/CSGreeting',null,'1','1','true'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/CSGreeting','true','false'};
        private String[] field_order_type_info = new String[]{'strName'};
    }
}
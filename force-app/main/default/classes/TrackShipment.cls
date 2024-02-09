public with sharing class TrackShipment {
    
    public class shipmentResponse {
        public String return_x;
     }
    
    @AuraEnabled
    public static String getShipmentStatus(String trknum) {
         //declare the variable and instantiate http
        String shipmentStatus;
        Http h = new Http();
        HttpRequest request = new HTTPRequest();
        
        //set the header, endpoint, format, method and timeout
        request.setHeader('Content-Type', 'application/soap+xml;encoding=UTF-8');
        
        if (String.isBlank(trknum)) {
            shipmentStatus = 'Tracking # Blank';
            System.debug('response: ' + shipmentStatus);
            return shipmentStatus;
        } else {
            //set the header, endpoint, format, method and timeout
            request.setHeader('Content-Type', 'application/soap+xml;encoding=UTF-8');
            request.setEndPoint('https://merzcommunities--mel.sandbox.my.salesforce-sites.com/services/apexrest/mockShipmentStatus?trackingNumber=' + trknum);
            request.setMethod('GET');
            request.setTimeout(60000);
            
            //call the webservice
            HttpResponse res = h.send(request); 
            shipmentStatus = res.getBody();
            System.debug('response: ' + shipmentStatus);
            return shipmentStatus;
        }    
    }

}
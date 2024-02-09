@isTest
global class ShipmentCalloutMock implements WebServiceMock {
   global void doInvoke(
           Object stub,
           Object request,
           Map<String, Object> response,
           String endpoint,
           String soapAction,
           String requestName,
           String responseNS,
           String responseName,
           String responseType) {
        // start - specify the response you want to send
        TrackShipment.shipmentResponse response_x = new TrackShipment.shipmentResponse();
        response_x.return_x = 'Shipped- On Time';
        // end
        response.put('response_x', response_x); 
        
   }
}
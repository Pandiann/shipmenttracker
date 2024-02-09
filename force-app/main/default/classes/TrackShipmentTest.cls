@isTest
private class TrackShipmentTest {
    
    @isTest static void testgetShipmentStatus() {
        
        Test.setMock(WebServiceMock.class, new ShipmentCalloutMock());
        String trkNum = 'abc123';
        String status = TrackShipmentMock.shipStat(trkNum);
        System.assert(status != null);
        System.assertEquals('Shipped- On Time', status);
        
    }

}
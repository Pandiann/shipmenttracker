public class TrackShipmentMock {
    public static String shipStat(String trk) {
        
        String status = TrackShipment.getShipmentStatus(trk);
        //String status = 'Shipped- On Time';
        return status;
    }
}
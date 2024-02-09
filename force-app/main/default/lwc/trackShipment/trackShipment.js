
// myLWC.js
import { LightningElement, track, api } from 'lwc';
import getStatus from '@salesforce/apex/TrackShipment.getShipmentStatus';

export default class TrackShipment extends LightningElement {
    @track apexResponse;

    invokeApexMethod() {
        getStatus()
            .then(result => {
                this.apexResponse = result;
            })
            .catch(error => {
                console.error('Error invoking Apex method:', error);
            });
    }
}

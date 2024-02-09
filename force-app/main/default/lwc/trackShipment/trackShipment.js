// myLWC.js
import { LightningElement, track, api } from 'lwc';
import getStatus from '@salesforce/apex/TrackShipment.getShipmentStatus';

export default class TrackShipment extends LightningElement {
    trackNum = 'FEDEX322';
    changeHandler(event){
        this.trackNum = event.target.value;
    }
    @track apexResponse;

    invokeApexMethod() {
        getStatus({ trknum: this.trackNum })
            .then(result => {
                this.apexResponse = result;
            })
            .catch(error => {
                console.error('Error invoking Apex method:', error);
            });
    }
}
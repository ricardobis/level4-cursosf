import { LightningElement, api, wire } from 'lwc';
import getWebAccounts from '@salesforce/apex/LWCAccountController.getWebAccounts';

const COLUMNS = [
                    { label: 'Account Id', fieldName: 'AccountId' },
                    { label: 'Name', fieldName: 'AccountName' },
                ];

export default class WebAccounts extends LightningElement {
    @api recordId = null;
    @api componentTitle = 'Curso DEV - TAB';

    columns = COLUMNS;
    @wire(getWebAccounts, { accountId : '$recordId' } ) accounts;
}
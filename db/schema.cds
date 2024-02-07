namespace selectelectronics.store;

using { managed, cuid } from '@sap/cds/common';

entity BusinessPartner: cuid, managed {
    @title: 'Number'
    number: String(10) @mandatory;
    @title: 'Name'
    name: String(50) @mandatory;
    @title: 'Address 1'
    address1: String(100) @mandatory;
    @title: 'Address 2'
    address2: String(100);
    @title: 'City'
    city: String(30) @mandatory;
    @title: 'State'
    state: Association to States;
    @title: 'PIN Code'
    pin_code: String(10) @mandatory;
    @title: 'Is GSTN Registered'
    is_gstn_registered: Boolean;
    @title: 'GSTIN Number'
    gstin_number: String(15) @mandatory;
    @title: 'Is Vendor'
    is_vendor: Boolean;
    @title: 'Is Customer'
    is_customer: Boolean;

}

@cds.persistence.skip
entity States {
    @title: 'Code'
    key code: String(2);
    @title: 'Description'
    description: String(20);
}
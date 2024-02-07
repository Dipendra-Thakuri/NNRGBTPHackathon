namespace selectelectronics.store;

using { managed, cuid } from '@sap/cds/common';

@assert.unique:{
    number:[number],
    gstin_number:[gstin_number]
}

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
    is_gstn_registered: Boolean default false;
    @title: 'GSTIN Number'
    gstin_number: String(15) @mandatory;
    @title: 'Is Vendor'
    is_vendor: Boolean default false;
    @title: 'Is Customer'
    is_customer: Boolean default false;

}

@cds.persistence.skip
entity States {
    @title: 'Code'
    key code: String(2);
    @title: 'Description'
    description: String(20);
}

entity Stores: cuid, managed {
    @title: 'Store ID'
    store_id: String(10) @mandatory;
    @title: 'Name'
    name: String(30) @mandatory;
    @title: 'Address 1'
    address1: String(100) @mandatory;
    @title: 'Address 2'
    address2: String(100) @mandatory;
    @title: 'City'
    city: String(20) @mandatory;
    @title: 'State'
    state: Association to States;
    @title: 'PIN Code'
    pin_code: String(10) @mandatory;
}

entity Products: cuid, managed {
    @title: 'Products ID'
    product_id: String(10) @mandatory;
    @title: 'Name'
    name: String(40) @mandatory;
    @title: 'URL'
    url: String(100) @mandatory;
    @title: 'Cost Price'
    cost_price: String(10) @mandatory;
    @title: 'Sell Price'
    sell_price: String(10) @mandatory;
}

entity StoreData: cuid, managed {
    store_id: String(10) @mandatory;
    product_id: String(10) @mandatory;
    stock_qty: String(10) @mandatory;
}

entity PurchaseApp: cuid, managed {
    @title: 'Purchase Order No.'
    purchase_order_no: String(10) @mandatory;
    @title: 'BusinessPartner'
    businesspartner: String(10);
    @title: 'Purchase Order Date'
    purchase_order_date: Date @mandatory;
    @title: 'Items'
    item: String(10);
}

entity Items: cuid, managed {
    @title: 'Product ID'
    p_id: String(10);
    @title: 'Quantity'
    quantity: String(10) @mandatory;
    @title: 'Price'
    price: String(10);
    @title: 'Store'
    store: String(10);
}
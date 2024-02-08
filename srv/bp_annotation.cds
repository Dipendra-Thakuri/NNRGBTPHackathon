using { selectelectronicsDB } from './service';

annotate selectelectronicsDB.BusinessPartner with {
    pin_code @assert.format: '^\d{6}$';
    gstin_number @assert.format: '^\d{2}[A-Z]{5}\d{4}[A-Z]{1}[1-9A-Z]{1}[Z]{1}\d{1}$';
}

annotate selectelectronicsDB.BusinessPartner with @(
    UI.LineItem: [
        {
            $Type : 'UI.DataField',
            Value : number
        },
        {
            $Type : 'UI.DataField',
            Value : name
        },
        {
            $Type : 'UI.DataField',
            Value : address1
        },
        {
            $Type : 'UI.DataField',
            Value : address2
        },
        {
            $Type : 'UI.DataField',
            Value : city
        },
        {
            $Type : 'UI.DataField',
            Label : 'State',
            Value : state.description
        },
        {
            $Type : 'UI.DataField',
            Value : pin_code
        },
        {
            Value : is_gstn_registered
        },
        {
            $Type : 'UI.DataField',
            Value : gstin_number
        },
        {
            Value : is_vendor
        },
        {
            Value: is_customer
        }
    ],
    UI.SelectionFields: [ name, address1, city, state_code, pin_code, is_gstn_registered, is_vendor, is_customer ],       
    UI.FieldGroup #BusinessPartnerInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Value : address1
            },
            {
                $Type : 'UI.DataField',
                Value : address2
            },
            {
                $Type : 'UI.DataField',
                Value : city
            },
            {
                $Type : 'UI.DataField',
                Label : 'State', 
                Value : state_code
            },
            {
                $Type : 'UI.DataField',
                Value : pin_code
            },
            {
                Value : is_gstn_registered
            },
            {
                $Type : 'UI.DataField',
                Value : gstin_number
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'BusinessPartnerInfoFacet',
            Label : 'Business Partner Information',
            Target : '@UI.FieldGroup#BusinessPartnerInformation',
        },
    ],  
);

annotate selectelectronicsDB.States with @(
    UI.LineItem: [
        {
            Value : code
        },
        {
            Value : description
        },
    ],
);

annotate selectelectronicsDB.BusinessPartner with {
    state @(
        Common.ValueListWithFixedValues: true,
        Common.ValueList : {
            Label: 'States',
            CollectionPath : 'States',
            Parameters     : [
                {
                    $Type             : 'Common.ValueListParameterInOut',
                    LocalDataProperty : state_code,
                    ValueListProperty : 'code'
                },
                   {
                    $Type             : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'description'
                },
            ]
        }
    )
}
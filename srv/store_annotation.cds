using { selectelectronicsDB } from './service';

annotate selectelectronicsDB.Stores with @(
    UI.LineItem: [
        {
            $Type : 'UI.DataField',
            Value : store_id
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
            Value : state.description
        },
        {
            $Type : 'UI.DataField',
            Value : pin_code
        },
    ],
    UI.SelectionFields: [ name, number, address1, city, state_code, pin_code ],       
    UI.FieldGroup #StoresInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : store_id,
            },
            {
                $Type : 'UI.DataField',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Value : address1,
            },
            {
                $Type : 'UI.DataField',
                Value : address2,
            },
            {
                $Type : 'UI.DataField',
                Value : city,
            },
            {
                $Type : 'UI.DataField',
                Value : state.description,
            },
            {
                $Type : 'UI.DataField',
                Value : pin_code,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'StoresFacet',
            Label : 'Stores Information',
            Target : '@UI.FieldGroup#StoresInformation',
        },
    ],
    
);
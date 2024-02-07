using { selectelectronicsDB } from './service';

annotate selectelectronicsDB.Products with @(
    UI.LineItem: [
        {
            $Type : 'UI.DataField',
            Value : product_id
        },
        {
            $Type : 'UI.DataField',
            Value : name
        },
        {
            $Type : 'UI.DataField',
            Value : url
        },
        {
            $Type : 'UI.DataField',
            Value : cost_price
        },
        {
            $Type : 'UI.DataField',
            Value : sell_price
        },
    ],
    UI.SelectionFields: [ product_id, name, url, cost_price, sell_price ],       
    UI.FieldGroup #ProductsInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : product_id,
            },
            {
                $Type : 'UI.DataField',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Value : url,
            },
            {
                $Type : 'UI.DataField',
                Value : cost_price,
            },
            {
                $Type : 'UI.DataField',
                Value : sell_price,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'ProductsFacet',
            Label : 'Products Information',
            Target : '@UI.FieldGroup#ProductsInformation',
        },
    ],
    
);
using { selectelectronicsDB } from './service';

annotate selectelectronicsDB.States with @(
    UI.LineItem: [
        {
            Value : code
        },
        {
            Value : description
        },
    ],
    UI.FieldGroup #StateInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                Value : code,
            },
            {
                Value : description,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'StatesFacet',
            Label : 'States',
            Target : '@UI.FieldGroup#StateInformation',
        },
    ],
);


annotate selectelectronicsDB.States with {
    state @(
        Common.ValueListWithFixedValues: true,
        Common.ValueList : {
            Label: 'States',
            CollectionPath : 'States',
            Parameters     : [
                {
                    $Type             : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : state_code
                },
                   {
                    $Type             : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'description'
                },
            ]
        }
    )
}
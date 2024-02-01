using CatalogService as service from '../../srv/interaction_srv';

annotate service.Interactions_Header with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'PARTNER',
            Value : PARTNER,
        },
        {
            $Type : 'UI.DataField',
            Label : 'LOG_DATE',
            Value : LOG_DATE,
        },
        {
            $Type : 'UI.DataField',
            Value : BPCOUNTRY_code,
        },
    ]
);
annotate service.Interactions_Header with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PARTNER',
                Value : PARTNER,
            },
            {
                $Type : 'UI.DataField',
                Label : 'LOG_DATE',
                Value : LOG_DATE,
            },
            {
                $Type : 'UI.DataField',
                Value : BPCOUNTRY_code,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
annotate service.Interactions_Header with @(
    UI.SelectionPresentationVariant #tableView : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : 'Interactions_Header',
    }
);
annotate service.V_Interaction with @(
    UI.LineItem #tableView : [
        {
            $Type : 'UI.DataField',
            Value : BPCOUNTRY_CODE,
            Label : 'BPCOUNTRY_CODE',
        },
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'ID',
        },
        {
            $Type : 'UI.DataField',
            Value : LOG_DATE,
            Label : 'LOG_DATE',
        },
        {
            $Type : 'UI.DataField',
            Value : LOGTEXT,
            Label : 'LOGTEXT',
        },
        {
            $Type : 'UI.DataField',
            Value : PARTNER,
            Label : 'PARTNER',
        },
        {
            $Type : 'UI.DataField',
            Value : TEXT_ID,
            Label : 'TEXT_ID',
        },
        {
            $Type : 'UI.DataField',
            Value : LANGU,
        },],
    UI.SelectionPresentationVariant #tableView : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem#tableView',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
                ],
        },
        Text : 'View_Interaction',
    }
);
annotate service.Interactions_Header with @(
    UI.SelectionFields : [
        ID,PARTNER,BPCOUNTRY.code,ITEMS.INTHeader_ID,]
);
annotate service.Interactions_Header with {
    ID @Common.Label : 'ID'
};
annotate service.Interactions_Header with {
    LOG_DATE @Common.Label : 'LOG_DATE'
};
annotate service.Interactions_Header with {
    PARTNER @Common.Label : 'PARTNER'
};
annotate service.Interactions_Header with {
    LOG_DATE @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Interactions_Header',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : LOG_DATE,
                    ValueListProperty : 'LOG_DATE',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'ID',
                },
            ],
            Label : 'LOG DATE',
        },
        Common.ValueListWithFixedValues : false
)};
annotate service.V_Interaction with @(
    UI.DataPoint #ID : {
        Value : ID,
        MinimumValue : 0,
        MaximumValue : 4,
    },
    UI.Chart #ID : {
        ChartType : #Bullet,
        Measures : [
            ID,
        ],
        MeasureAttributes : [
            {
                DataPoint : '@UI.DataPoint#ID',
                Role : #Axis1,
                Measure : ID,
            },
        ],
    }
);
annotate service.Interactions_Items with @(
    UI.LineItem #tableView : [
        {
            $Type : 'UI.DataField',
            Value : INTHeader_ID,
            Label : 'INTHeader_ID',
        },{
            $Type : 'UI.DataField',
            Value : LANGU,
            Label : 'LANGU',
        },{
            $Type : 'UI.DataField',
            Value : LOGTEXT,
            Label : 'LOGTEXT',
        },{
            $Type : 'UI.DataField',
            Value : TEXT_ID,
            Label : 'TEXT_ID',
        },],
    UI.SelectionPresentationVariant #tableView : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem#tableView',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : 'Interactions_Items',
    }
);
annotate service.Interactions_Items with {
    INTHeader @Common.Label : 'ITEMS/INTHeader_ID'
};
annotate service.Interactions_Header with @(
    UI.DataPoint #ID : {
        $Type : 'UI.DataPointType',
        Value : ID,
        Title : 'ID',
    },
    UI.HeaderFacets : []
);
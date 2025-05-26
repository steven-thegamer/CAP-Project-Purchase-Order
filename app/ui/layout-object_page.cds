using from '../../srv/admin-service';
using from '../ui/layout-list_report';

annotate AdminService.Orders with @(UI: {
    HeaderInfo                : {
        TypeName      : '{i18n>HeaderTitle}',
        TypeNamePlural: '{i18n>POInfo}',
        Title         : {Value: orderNo},
        TypeImageUrl  : 'sap-icon://customer-order-entry'
    },
    HeaderFacets              : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>POData}',
            ID    : 'Header',
            Target: '@UI.FieldGroup#Basic_info'
        },
    ],
    Facets                    : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>General}',
            ID    : 'General',
            Target: '@UI.FieldGroup#General'
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>Quantity}',
            ID    : 'Quantity',
            Target: '@UI.FieldGroup#Quantity'
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>Details}',
            ID    : 'Details',
            Target: '@UI.FieldGroup#Details'
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Administrative',
            ID    : 'Administrative',
            Target: '@UI.FieldGroup#Administrative'
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>Items}',
            Target: 'items/@UI.LineItem'
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>Attachments}',
            Target: 'attachments/@UI.LineItem'
        }
    ],
    FieldGroup #Basic_info    : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: orderNo
            },
        ]
    },
    FieldGroup #General       : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: orderNo
            },
            {
                $Type: 'UI.DataField',
                Value: purchOrg_purchOrg
            },
            {
                $Type: 'UI.DataField',
                Value: purchGroup_purchGroup
            },
            {
                $Type: 'UI.DataField',
                Value: vendor_vendor
            },
            {
                $Type: 'UI.DataField',
                Value: companyCode_companyCode
            },
        ]
    },
    FieldGroup #Quantity       : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: totalNetPrice
            },
            {
                $Type: 'UI.DataField',
                Value: currency_code
            },
            {
                $Type: 'UI.DataField',
                Value: totalStock
            },
        ]
    },
    FieldGroup #Details       : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: note
            },
            {
                $Type: 'UI.DataField',
                Value: text
            },
            {
                $Type: 'UI.DataField',
                Value: statusIcon,
                Criticality : {
                    $value: status_code,
                },
            },
        ]
    },
    FieldGroup #Administrative       : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: createdAt
            },
            {
                $Type: 'UI.DataField',
                Value: createdBy
            },
            {
                $Type: 'UI.DataField',
                Value: modifiedAt
            },
            {
                $Type: 'UI.DataField',
                Value: modifiedBy
            },
        ]
    },
}
);

annotate AdminService.OrderItems with @(UI: {
    PresentationVariant        : {
        $Type    : 'UI.PresentationVariantType',
        SortOrder: [{
            $Type     : 'Common.SortOrderType',
            Property  : modifiedAt,
            Descending: true
        }, ],
    },
    HeaderFacets              : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>POItemData}',
            ID    : 'Header',
            Target: '@UI.FieldGroup#Basic_info'
        },
    ],
    FieldGroup #Basic_info : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: orderItemNo
            },
        ]
    },
}
);

annotate AdminService.Attachments with @(UI: {
    PresentationVariant        : {
        $Type    : 'UI.PresentationVariantType',
        SortOrder: [{
            $Type     : 'Common.SortOrderType',
            Property  : modifiedAt,
            Descending: true
        }, ],
    }
}) ;

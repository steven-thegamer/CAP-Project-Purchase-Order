using from '../../srv/admin-service';
using from '../ui/layout-list_report';

annotate AdminService.Orders with @(
    UI.HeaderInfo                : {
        TypeName      : '{i18n>HeaderTitle}',
        TypeNamePlural: '{i18n>POInfo}',
        Title         : {Value: orderNo},
        TypeImageUrl  : 'sap-icon://customer-order-entry'
    },
    UI.HeaderFacets              : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>POData}',
            ID    : 'Header',
            Target: '@UI.FieldGroup#Basic_info'
        },
    ],
    UI.Facets                    : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>Header}',
            ID    : 'Header',
            Target: '@UI.FieldGroup#Header'
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>General}',
            ID    : 'General',
            Target: '@UI.FieldGroup#General'
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
        }
    ],
    UI.FieldGroup #Basic_info    : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: orderNo
            },
        ]
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
    LineItem : [
        {
            Value             : orderItemNo,
            Label             : '{i18n>OrderItemNo}',
            @UI.Importance: #High
        },
        {
            Value             : accountAssignmentCategory,
            Label             : '{i18n>AccountAssignmentCategory}',
            @UI.Importance: #Medium
        },
        {
            Value             : itemCategory,
            Label             : '{i18n>ItemCategory}',
            @UI.Importance: #Medium
        },
        {
            Value             : materialNo,
            Label             : '{i18n>MaterialNo}',
            @UI.Importance: #High
        },
        {
            Value             : materialDescr,
            Label             : '{i18n>MaterialDescr}',
            @UI.Importance: #High
        },
        {
            Value             : deliveryDateCategory,
            Label             : '{i18n>DeliveryDateCategory}',
            @UI.Importance: #Medium
        },
        {
            Value             : stock,
            Label             : '{i18n>Stock}',
            @UI.Importance: #High
        },
        {
            Value             : deliveryDate,
            Label             : '{i18n>DeliveryDate}',
            @UI.Importance: #Medium
        },
        {
            Value             : netPrice,
            Label             : '{i18n>NetPrice}',
            @UI.Importance: #High
        },
        {
            Value             : materialGroup,
            Label             : '{i18n>MaterialGroup}',
            @UI.Importance: #Medium
        },
        {
            Value             : plant_plant,
            Label             : '{i18n>Plant}',
            @UI.Importance: #High
        },
        {
            Value             : storageLocation_storageLocation,
            Label             : '{i18n>StorageLocation}',
            @UI.Importance: #Medium
        },
        {
            Value             : deletionIndicator,
            Label             : '{i18n>DeletionIndicator}',
            @UI.Importance: #Low
        },
    ]
}
);
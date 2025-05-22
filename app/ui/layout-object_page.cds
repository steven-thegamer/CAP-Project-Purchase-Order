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
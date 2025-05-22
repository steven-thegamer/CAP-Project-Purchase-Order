using from '../../srv/admin-service';

annotate AdminService.Orders with {
    status @Common.ValueListWithFixedValues;

    orderNo   @(
        Common.ValueList               : {
            $Type                       : 'Common.ValueListType',
            CollectionPath              : 'Orders',
            Label                       : 'orderNo',
            PresentationVariantQualifier: 'vh_Orders_orderNo',
            Parameters                  : [
                {
                    $Type            : 'Common.ValueListParameterInOut',
                    LocalDataProperty: orderNo,
                    ValueListProperty: 'orderNo',
                },
            ],
        },
        Common.ValueListWithFixedValues: false
    );

    purchOrg @(
        Common.ValueList               : {
            $Type                       : 'Common.ValueListType',
            CollectionPath              : 'Orders',
            Label                       : 'purchOrg',
            PresentationVariantQualifier: 'vh_Orders_purchOrg',
            Parameters                  : [
                {
                    $Type            : 'Common.ValueListParameterInOut',
                    LocalDataProperty: purchOrg_purchOrg,
                    ValueListProperty: 'purchOrg_purchOrg',
                },
            ],
        },
        Common.ValueListWithFixedValues: false
    );

    purchGroup @(
        Common.ValueList               : {
            $Type                       : 'Common.ValueListType',
            CollectionPath              : 'Orders',
            Label                       : 'purchGroup',
            PresentationVariantQualifier: 'vh_Orders_purchGroup',
            Parameters                  : [
                {
                    $Type            : 'Common.ValueListParameterInOut',
                    LocalDataProperty: purchGroup_purchGroup,
                    ValueListProperty: 'purchGroup_purchGroup',
                },
            ],
        },
        Common.ValueListWithFixedValues: false
    );

};

annotate AdminService.Orders with  @(UI.PresentationVariant #vh_Orders_orderNo: {
    $Type    : 'UI.PresentationVariantType',
    SortOrder: [{
        $Type     : 'Common.SortOrderType',
        Property  : orderNo,
        Descending: false,
    }, ],
}, )

@(UI.PresentationVariant #vh_Orders_purchGroup: {
    $Type    : 'UI.PresentationVariantType',
    SortOrder: [{
        $Type     : 'Common.SortOrderType',
        Property  : purchGroup_purchGroup,
        Descending: false,
    }, ],
}, )

@(UI.PresentationVariant #vh_Orders_purchOrg: {
    $Type    : 'UI.PresentationVariantType',
    SortOrder: [{
        $Type     : 'Common.SortOrderType',
        Property  : purchOrg_purchOrg,
        Descending: false,
    }, ],
}, )

;
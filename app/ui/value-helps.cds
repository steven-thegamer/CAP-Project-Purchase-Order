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
                {
                    $Type            : 'Common.ValueListParameterInOut',
                    LocalDataProperty: companyCode_companyCode,
                    ValueListProperty: 'companyCode_companyCode',
                },
                {
                    $Type            : 'Common.ValueListParameterInOut',
                    LocalDataProperty: vendor_vendor,
                    ValueListProperty: 'vendor_vendor',
                },
                {
                    $Type            : 'Common.ValueListParameterInOut',
                    LocalDataProperty: purchGroup_purchGroup,
                    ValueListProperty: 'purchGroup_purchGroup',
                },
                {
                    $Type            : 'Common.ValueListParameterInOut',
                    LocalDataProperty: purchOrg_purchOrg,
                    ValueListProperty: 'purchOrg_purchOrg',
                },
            ],
        },
        Common.ValueListWithFixedValues: false
    );

    purchOrg @(
        Common.ValueList               : {
            $Type                       : 'Common.ValueListType',
            CollectionPath              : 'PurchOrganizations',
            Label                       : 'purchOrg',
            PresentationVariantQualifier: 'vh_Orders_purchOrg',
            Parameters                  : [
                {
                    $Type            : 'Common.ValueListParameterInOut',
                    LocalDataProperty: purchOrg_purchOrg,
                    ValueListProperty: 'purchOrg',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    //LocalDataProperty: purchOrg_purchOrg,
                    ValueListProperty: 'descr',
                },
            ],
        },
        Common.ValueListWithFixedValues: false
    );

    purchGroup @(
        Common.ValueList               : {
            $Type                       : 'Common.ValueListType',
            CollectionPath              : 'PurchasingGroups',
            Label                       : 'purchGroup',
            PresentationVariantQualifier: 'vh_Orders_purchGroup',
            Parameters                  : [
                {
                    $Type            : 'Common.ValueListParameterInOut',
                    LocalDataProperty: purchGroup_purchGroup,
                    ValueListProperty: 'purchGroup',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'descr',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'eMail',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'faxNo',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'tel',
                },
            ],
        },
        Common.ValueListWithFixedValues: false
    );

    vendor @(
        Common.ValueList               : {
            $Type                       : 'Common.ValueListType',
            CollectionPath              : 'Vendors',
            Label                       : 'vendor',
            PresentationVariantQualifier: 'vh_Orders_vendor',
            Parameters                  : [
                {
                    $Type            : 'Common.ValueListParameterInOut',
                    LocalDataProperty: vendor_vendor,
                    ValueListProperty: 'vendor',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'name1',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'address',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'city',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'country',
                },
            ],
        },
        Common.ValueListWithFixedValues: false
    );

    companyCode @(
        Common.ValueList               : {
            $Type                       : 'Common.ValueListType',
            CollectionPath              : 'Companies',
            Label                       : 'companyCode',
            PresentationVariantQualifier: 'vh_Orders_companyCode',
            Parameters                  : [
                {
                    $Type            : 'Common.ValueListParameterInOut',
                    LocalDataProperty: companyCode_companyCode,
                    ValueListProperty: 'companyCode',
                },
                {
                    $Type            : 'Common.ValueListParameterOut',
                    LocalDataProperty: companyCode_companyCode,
                    ValueListProperty: 'name',
                },
                {
                    $Type            : 'Common.ValueListParameterOut',
                    LocalDataProperty: companyCode_companyCode,
                    ValueListProperty: 'country',
                },
                {
                    $Type            : 'Common.ValueListParameterOut',
                    LocalDataProperty: companyCode_companyCode,
                    ValueListProperty: 'language',
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

@(UI.PresentationVariant #vh_Orders_companyCode: {
    $Type    : 'UI.PresentationVariantType',
    SortOrder: [{
        $Type     : 'Common.SortOrderType',
        Property  : companyCode_companyCode,
        Descending: false,
    }, ],
}, )

@(UI.PresentationVariant #vh_Orders_vendor: {
    $Type    : 'UI.PresentationVariantType',
    SortOrder: [{
        $Type     : 'Common.SortOrderType',
        Property  : vendor_vendor,
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
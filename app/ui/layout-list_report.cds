using from '../../srv/admin-service';

annotate AdminService.Orders with @(UI: {
    HeaderInfo: {
        TypeName      : '{i18n>HeaderTitle}',
        TypeNamePlural: '{i18n>POInfo}',
    },
    SelectionFields     : [
        orderNo,
        purchOrg_purchOrg,
        purchGroup_purchGroup,
        vendor_vendor,
        companyCode_companyCode,
        currency_code
    ],
    LineItem  : [
        {
            $Type             : 'UI.DataField',
            Value             : orderNo,
            @UI.Importance    : #High,
            @HTML5.CssDefaults: {width: '10em'}
        },
        {
            $Type             : 'UI.DataField',
            Value             : purchOrg_purchOrg,
            @UI.Importance    : #High,
            @HTML5.CssDefaults: {width: '10em'}
        },
        {
            $Type         : 'UI.DataField',
            Value         : purchGroup_purchGroup,
            @UI.Importance    : #High,
        },
        {
            $Type         : 'UI.DataField',
            Value         : vendor_vendor,
            @UI.Importance: #High,
        },
        {
            $Type         : 'UI.DataField',
            Value         : companyCode_companyCode,
            @UI.Importance: #High,
        },
        {
            $Type         : 'UI.DataField',
            Value         : totalNetPrice,
            @UI.Importance: #Medium,
        },
        {
            $Type         : 'UI.DataField',
            Value         : totalStock,
            @UI.Importance: #Medium,
        },
        {
            $Type         : 'UI.DataField',
            Value         : status_code,
            @UI.Importance: #Low,
        },
        {
            $Type         : 'UI.DataField',
            Value         : statusIcon,
            @UI.Importance: #Low,
        },
    ],
});

annotate AdminService.OrderItems with @(UI: {
    HeaderInfo: {
        TypeName      : '{i18n>POHeaderTitle}',
        TypeNamePlural: '{i18n>POItemInfo}',
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
    ],
});

annotate AdminService.Attachments with @(UI: {
        LineItem  : [
        {
            Value             : orderItem_ID,
            Label             : '{i18n>OrderItemNo}',
            @UI.Importance: #High
        },
        {
            Value             : fileName,
            Label             : '{i18n>FileName}',
            @UI.Importance: #Medium
        },
        {
            Value             : fileType,
            Label             : '{i18n>FileType}',
            @UI.Importance: #Low
        },
    ],
});

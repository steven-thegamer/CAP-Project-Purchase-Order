using from '../../srv/admin-service';

annotate AdminService.Orders with @(
    UI.HeaderInfo: {
        TypeName      : '{i18n>HeaderTitle}',
        TypeNamePlural: '{i18n>POInfo}',
    },
    UI.SelectionFields     : [
        orderNo,
        purchOrg_purchOrg,
        purchGroup_purchGroup,
        vendor_vendor,
        companyCode_companyCode,
        currency_code
    ],
    UI.LineItem  : [
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
        /*
        {
            $Type: 'UI.DataField',
            Value: stock,
        },
        {
            $Type: 'UI.DataField',
            Value: rating,
        },
        */
    ],

);

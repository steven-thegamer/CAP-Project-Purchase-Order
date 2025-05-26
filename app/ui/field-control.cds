using from '../../srv/admin-service';

annotate AdminService.Orders with {
    ID @UI.Hidden @UI.HiddenFilter;
    orderNo @Common.FieldControl : #ReadOnly;
    text @UI.MultiLineText    : true;
    totalNetPrice @Measures.ISOCurrency: currency_code;
};

annotate AdminService.OrderItems with {
    ID @UI.Hidden @UI.HiddenFilter;
    orderItemNo @Common.FieldControl : #ReadOnly;
    text @UI.MultiLineText    : true;
};
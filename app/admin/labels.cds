using from '../../srv/admin-service';

annotate AdminService.Orders with @title: '{i18n>Orders}' {
    orderNo @Common.Label: '{i18n>OrderNo}';
    purchOrg @Common.Label: '{i18n>PurchOrg}';
    purchGroup @Common.Label: '{i18n>PurchGroup}';
    vendor @Common.Label: '{i18n>Vendor}';
    companyCode @Common.Label: '{i18n>CompanyCode}';
    status @Common.Label: '{i18n>Status}';
    statusIcon @Common.Label: '{i18n>StatusIcon}';
};

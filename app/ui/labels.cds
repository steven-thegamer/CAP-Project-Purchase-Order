using from '../../srv/admin-service';

annotate AdminService.Orders with @title: '{i18n>Orders}' {
    orderNo @Common.Label: '{i18n>OrderNo}';
    purchOrg @Common.Label: '{i18n>PurchOrg}' @Common.Text : purchOrg.descr;
    purchGroup @Common.Label: '{i18n>PurchGroup}' @Common.Text: purchGroup.descr;
    vendor @Common.Label: '{i18n>Vendor}' @Common.Text: vendor.name1;
    companyCode @Common.Label: '{i18n>CompanyCode}' @Common.Text: companyCode.name;
    status @Common.Label: '{i18n>Status}';
    statusIcon @Common.Label: '{i18n>StatusIcon}';
    text @Common.Label: '{i18n>Text}';
    currency @Common.Label: '{i18n>Currency}';
    totalNetPrice @Common.Label: '{i18n>TotalNetPrice}';
    totalStock @Common.Label: '{i18n>TotalStock}';
};

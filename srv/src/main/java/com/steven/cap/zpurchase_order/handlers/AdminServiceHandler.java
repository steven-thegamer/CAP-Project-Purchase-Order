package com.steven.cap.zpurchase_order.handlers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.sap.cds.ql.Insert;
import com.sap.cds.ql.Update;
import com.sap.cds.ql.cqn.CqnAnalyzer;
import com.sap.cds.reflect.CdsModel;
import com.sap.cds.services.cds.CqnService;
import com.sap.cds.services.handler.EventHandler;
import com.sap.cds.services.handler.annotations.After;
import com.sap.cds.services.handler.annotations.Before;
import com.sap.cds.services.handler.annotations.On;
import com.sap.cds.services.handler.annotations.ServiceName;
import com.sap.cds.services.persistence.PersistenceService;

import cds.gen.adminservice.AdminService_;
import cds.gen.adminservice.Orders_;
import cds.gen.adminservice.Attachments_;
import cds.gen.adminservice.Companies_;
import cds.gen.adminservice.OrderItems_;
import cds.gen.adminservice.Plants_;
import cds.gen.adminservice.PurchasingGroups_;
import cds.gen.adminservice.Vendors_;
import cds.gen.com.win.po.Orders;

@Component
@ServiceName(AdminService_.CDS_NAME)
public class AdminServiceHandler implements EventHandler  {

    @Autowired
    private CdsModel model;

    @Autowired
    private PersistenceService db;

}

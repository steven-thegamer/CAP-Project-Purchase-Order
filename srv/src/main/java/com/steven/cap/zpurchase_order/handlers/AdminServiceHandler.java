package com.steven.cap.zpurchase_order.handlers;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;

import static com.sap.cds.ql.CQL.param;

import java.util.List;
import java.util.Map;

import static cds.gen.adminservice.AdminService_.ORDERS;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.sap.cds.Result;
import com.sap.cds.ql.Insert;
import com.sap.cds.ql.Select;
import com.sap.cds.ql.Update;
import com.sap.cds.ql.Upsert;
import com.sap.cds.ql.cqn.CqnAnalyzer;
import com.sap.cds.ql.cqn.CqnSelect;
import com.sap.cds.ql.cqn.CqnSortSpecification;
import com.sap.cds.ql.cqn.CqnUpdate;
import com.sap.cds.ql.cqn.CqnUpsert;
import com.sap.cds.reflect.CdsModel;
import com.sap.cds.services.cds.CdsReadEventContext;
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
import cds.gen.com.win.po.Status;
import cds.gen.com.win.po.Status_;

@Component
@ServiceName(AdminService_.CDS_NAME)
public class AdminServiceHandler implements EventHandler  {

}

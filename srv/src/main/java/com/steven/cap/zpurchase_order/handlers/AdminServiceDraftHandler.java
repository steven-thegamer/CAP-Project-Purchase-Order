package com.steven.cap.zpurchase_order.handlers;

import static cds.gen.adminservice.AdminService_.ORDERS;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.sap.cds.ql.Select;
import com.sap.cds.ql.Update;
import com.sap.cds.ql.cqn.CqnAnalyzer;
import com.sap.cds.reflect.CdsModel;
import com.sap.cds.services.ErrorStatuses;
import com.sap.cds.services.ServiceException;
import com.sap.cds.services.draft.DraftCancelEventContext;
import com.sap.cds.services.draft.DraftCreateEventContext;
import com.sap.cds.services.draft.DraftEditEventContext;
import com.sap.cds.services.draft.DraftNewEventContext;
import com.sap.cds.services.draft.DraftPatchEventContext;
import com.sap.cds.services.draft.DraftPrepareEventContext;
import com.sap.cds.services.draft.DraftReadEventContext;
import com.sap.cds.services.draft.DraftSaveEventContext;
import com.sap.cds.services.draft.DraftService;
import com.sap.cds.services.handler.EventHandler;
import com.sap.cds.services.handler.annotations.Before;
import com.sap.cds.services.handler.annotations.ServiceName;

import cds.gen.adminservice.AdminService;
import cds.gen.adminservice.AdminService_;
import cds.gen.adminservice.Orders;

@Component
@ServiceName(AdminService_.CDS_NAME)
public class AdminServiceDraftHandler implements EventHandler {

    @Autowired
    private CdsModel model;

    @Autowired
    private AdminService.Draft orderDraft;
    
    @Before(event = DraftService.EVENT_DRAFT_NEW)
    public void beforeNewDraftOrder(DraftNewEventContext context, Orders order) {
        order.setId("1234567890");
        System.out.println("beforeNewDraftOrder" + order.toJson());
    }

    @Before(event = DraftService.EVENT_DRAFT_CREATE)
    public void beforeCreateDraftOrder(DraftCreateEventContext context, Orders order) {
        System.out.println("beforeCreateDraftOrder" + order.toJson());
    }

}

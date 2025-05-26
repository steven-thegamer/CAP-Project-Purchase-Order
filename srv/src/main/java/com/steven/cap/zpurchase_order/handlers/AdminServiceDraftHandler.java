package com.steven.cap.zpurchase_order.handlers;

import static cds.gen.adminservice.AdminService_.ORDERS;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.sap.cds.Result;
import com.sap.cds.Row;
import com.sap.cds.ql.Select;
import com.sap.cds.ql.Update;
import com.sap.cds.ql.cqn.CqnAnalyzer;
import com.sap.cds.ql.cqn.CqnSelect;
import com.sap.cds.ql.cqn.CqnSortSpecification;
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
import com.sap.cds.services.persistence.PersistenceService;

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
    
    @Autowired
    private PersistenceService db;

    // This method is called when a draft order is being read
    // It is used to set the order number for the draft order
    @Before(event = DraftService.EVENT_DRAFT_NEW)
    public void beforeNewDraftOrder(DraftNewEventContext context, Orders order) {
        //Get the largest value in the database
        CqnSelect select = Select.from(ORDERS).columns("orderNo").orderBy(c -> c.get("orderNo").desc()).limit(1);
        Result result = db.run(select);

        // Convert the result to a List of Rows
        List<Row> rows = result.listOf(Row.class);
        // Get the largest orderNo value in the database into a string, then map it into an int
        String maxOrderNo = String.valueOf(rows.get(0).get("orderNo"));
        // Take the first 2 digits out of the order number because those are prefix
        String prefixOrder = maxOrderNo.substring(0, 2);
        // Just take the rest of the order number and convert it to an int, then add 1 to it
        String toConvertToInt = maxOrderNo.substring(3);
        int newMaxValue = Integer.parseInt(toConvertToInt) + 1;
        // Convert the new max value back to a string
        String stringOrderNo = String.valueOf(newMaxValue);
        // If the new order number is less than 8 digits, pad it with zeros
        if (stringOrderNo.length() < 8) stringOrderNo = String.format("%08d", newMaxValue);
        // Set the order number into the new order value
        order.setOrderNo( prefixOrder + stringOrderNo );
        System.out.println("beforeNewDraftOrder" + order.toJson());
    }

    @Before(event = DraftService.EVENT_DRAFT_CREATE)
    public void beforeCreateDraftOrder(DraftCreateEventContext context, Orders order) {
        System.out.println("beforeCreateDraftOrder" + order.toJson());
    }

}

package service;
import java.util.*;
import com.paypal.api.payments.*;
import com.paypal.base.rest.*;

import model.OrderPaypal;
public class paymentPayPalService {
	private static final String CLIENT_ID = "AZmQ6t8zGcTpyVLfuK4yqQDVx7XhjC-XanHbIcbpHNU0aHKUXK9_dLjN2P4Vt_EvqwCXpq9pkXpVPTaA";
    private static final String CLIENT_SECRET = "EGimTX6LS8CbzlRPjIhXe4hZXbfg7joikEe-zXd8qmn3gw8_LuQH9TdlRrzy1J6odYiUWSWYmvfYmBNo";
    private static final String MODE = "sandbox";
 
    public String authorizePayment(OrderPaypal orderDetail)        
            throws PayPalRESTException {       
 
        Payer payer = getPayerInformation();
        RedirectUrls redirectUrls = getRedirectURLs();
        List<Transaction> listTransaction = getTransactionInformation(orderDetail);
         
        Payment requestPayment = new Payment();
        requestPayment.setTransactions(listTransaction);
        requestPayment.setRedirectUrls(redirectUrls);
        requestPayment.setPayer(payer);
        requestPayment.setIntent("authorize");
 
        APIContext apiContext = new APIContext(CLIENT_ID, CLIENT_SECRET, MODE);
 
        Payment approvedPayment = requestPayment.create(apiContext);
 
        return getApprovalLink(approvedPayment);
 
    }
     
    private Payer getPayerInformation() {
    	  Payer payer = new Payer();
    	    payer.setPaymentMethod("paypal");
    	     
    	    PayerInfo payerInfo = new PayerInfo();
    	    payerInfo.setFirstName("William")
    	             .setLastName("Peterson")
    	             .setEmail("william.peterson@company.com");
    	     
    	    payer.setPayerInfo(payerInfo);
    	     
    	    return payer;
    }
     //4802 1267 7234 0985
    private RedirectUrls getRedirectURLs() {
    	RedirectUrls redirectUrls = new RedirectUrls();
        redirectUrls.setCancelUrl("http://localhost:8080/AirlineReservationSystem");
        redirectUrls.setReturnUrl("http://localhost:8080/AirlineReservationSystem/login");
         
        return redirectUrls;
    }
     
    private List<Transaction> getTransactionInformation(OrderPaypal orderDetail) {
    	Details details = new Details();
        details.setShipping(orderDetail.getShipping());
        details.setSubtotal(orderDetail.getSubtotal());
        details.setTax(orderDetail.getTax());
     
        Amount amount = new Amount();
        amount.setCurrency("USD");
        amount.setTotal(orderDetail.getTotal());
        amount.setDetails(details);
     
        Transaction transaction = new Transaction();
        transaction.setAmount(amount);
        transaction.setDescription(orderDetail.getProductName());
         
        ItemList itemList = new ItemList();
        List<Item> items = new ArrayList<>();
         
        Item item = new Item();
        item.setCurrency("USD");
        item.setName(orderDetail.getProductName());
        item.setPrice(orderDetail.getSubtotal());
        item.setTax(orderDetail.getTax());
        item.setQuantity("1");
         
        items.add(item);
        itemList.setItems(items);
        transaction.setItemList(itemList);
     
        List<Transaction> listTransaction = new ArrayList<>();
        listTransaction.add(transaction);  
         
        return listTransaction;
    }
     
    private String getApprovalLink(Payment approvedPayment) {
    	List<Links> links = approvedPayment.getLinks();
        String approvalLink = null;
         
        for (Links link : links) {
            if (link.getRel().equalsIgnoreCase("approval_url")) {
                approvalLink = link.getHref();
                break;
            }
        }      
         
        return approvalLink;
    }
}

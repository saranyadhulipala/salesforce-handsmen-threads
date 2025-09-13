# Setup – Apex Triggers

### Example Trigger: Loyalty Update
```apex
trigger UpdateLoyaltyStatus on Order (after insert) {
    for (Order o : Trigger.new) {
        if (o.TotalAmount > 10000) {
            HandsMen_Customer__c cust = [SELECT Id, Loyalty_Status__c 
                                         FROM HandsMen_Customer__c 
                                         WHERE Id = :o.Customer__c LIMIT 1];
            cust.Loyalty_Status__c = 'Gold';
            update cust;
        }
    }
}

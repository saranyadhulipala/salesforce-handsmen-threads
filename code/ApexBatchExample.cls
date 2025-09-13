global class ApexBatchExample implements Database.Batchable<sObject> {
    global Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator('SELECT Id, Status__c FROM Bulk_Order__c');
    }
    global void execute(Database.BatchableContext bc, List<Bulk_Order__c> scope) {
        for (Bulk_Order__c b : scope) {
            b.Status__c = 'Processed';
        }
        update scope;
    }
    global void finish(Database.BatchableContext bc) {
        System.debug('Bulk order processing completed.');
    }
}

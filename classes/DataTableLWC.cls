public with sharing class DataTableLWC {
    @AuraEnabled(cacheable = true)
    public static List<Account> fetchAccounts(){
       return [SELECT Id,Name,Phone,Type,Industry,Rating,Website,CreatedDate 
               FROM Account 
               ORDER BY CreatedDate
               DESC
               LIMIT 10];
    }
}
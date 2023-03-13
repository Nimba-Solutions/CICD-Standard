public with sharing class AccountSelector {
    
    public static List<Account> getAccountsByName(String name) {
        if (!String.isBlank(name)) {
            return [SELECT Id, Name, Phone FROM Account WHERE Name LIKE :name+'%'];
        } else {
            return new List<Account>();
        }
    }
    
    public static List<Account> getAccountsByPhone(String phone) {
        if (!String.isBlank(phone)) {
            return [SELECT Id, Name, Phone FROM Account WHERE Phone = :phone];
        } else {
            return new List<Account>();
        }
    }
    
}
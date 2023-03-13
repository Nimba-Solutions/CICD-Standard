public with sharing class AccountDomain {
    
    public static Boolean isValidAccount(Account acc) {
        return acc != null && !String.isBlank(acc.Name) && !String.isBlank(acc.Phone);
    }
    
    public static void updateAccount(Account acc, String newName, String newPhone) {
        if (acc != null) {
            acc.Name = newName;
            acc.Phone = newPhone;
            update acc;
            system.debug('Account Updated!');
        }
    }
    
}
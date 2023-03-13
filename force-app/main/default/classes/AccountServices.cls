public with sharing class AccountServices {
    
    public static void updateAccountName(Account acc, String newName) {
        AccountDomain.updateAccount(acc, newName, acc.Phone);
    }
    
    public static void updateAccountPhone(Account acc, String newPhone) {
        AccountDomain.updateAccount(acc, acc.Name, newPhone);
    }
    
    public static void createAccount(Account acc) {
        if (AccountDomain.isValidAccount(acc)) {
            insert acc;
        }
    }
    
}
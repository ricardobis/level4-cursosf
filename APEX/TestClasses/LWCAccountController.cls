public with sharing class LWCAccountController {

    @AuraEnabled(cacheable=true)
    public static List<AccountTO> getWebAccounts(String accountId){
        try {
            String query = 'SELECT Id, Name FROM Account WHERE AccountSource = \'Web\'';
            if(!String.isEmpty(accountId)) query = query + ' AND Id = :accountId';
            List<Account> accounts = Database.query(query);

            System.debug('Entrou com parametros');
            System.debug('Query: ' + query);

            return formatReturn(accounts);
        }
        catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    private static List<AccountTO> formatReturn(List<Account> accounts) {
        List<AccountTO> accountsToReturn = new List<AccountTO>();
        
        for(Account currentAccount : accounts ) {
            AccountTO item = new AccountTO();
            item.AccountId = currentAccount.ID;
            item.AccountName = currentAccount.Name;
            accountsToReturn.add(item);
        }

        return accountsToReturn;
    }

    @testVisible
    private class AccountTO { 
        @AuraEnabled
        public String AccountId { get; set; }
        @AuraEnabled
        public String AccountName { get; set; }
    }
}
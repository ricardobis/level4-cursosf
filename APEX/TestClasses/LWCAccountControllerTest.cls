@isTest
public class LWCAccountControllerTest {
    
    @TestSetup
    static void createAccounts(){
        Account acc = new Account(Name = 'Test Account 1', AccountSource = 'Web');
        insert acc;

        acc = new Account(Name = 'Test Account 2', AccountSource = 'Other');
        insert acc;
    }

    @isTest
    static void testGetWebAccounts(){

        Test.startTest();
        List<LWCAccountController.AccountTO> returnedAccounts = LWCAccountController.getWebAccounts(null);
        Test.stopTest();

        System.assertEquals(1, returnedAccounts.size(), 'O resultado esperado é 1.');
    }

    @isTest
    static void testSpecificWebAccount(){
        String accountId = [SELECT ID FROM Account WHERE AccountSource='Web' LIMIT 1].Id;
        Test.startTest();
        List<LWCAccountController.AccountTO> returnedAccounts = LWCAccountController.getWebAccounts(accountId);
        Test.stopTest();

        System.assertEquals(1, returnedAccounts.size(), 'O resultado esperado é 1.');
    }
}
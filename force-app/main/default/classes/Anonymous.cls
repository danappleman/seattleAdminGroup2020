public with sharing class Anonymous {
    // Be sure to set Apex debug levels to Error for accurate timing!

    public static void CreateObjectsWithoutMeasurement()
    {
        List<TestObject__c> objects = new List<TestObject__c>();
        for(Integer x= 0; x<200; x++) objects.add(new TestObject__c());
        insert objects;
    }

    public static void CreateObjects(Integer n)
    {
        List<TestObject__c> objects = new List<TestObject__c>();
        for(Integer x= 0; x<200; x++) objects.add(new TestObject__c(Source__c=n));
        Integer t = Limits.getCpuTime();
        insert objects;
        system.debug(LoggingLevel.Error, 'CPU time consumed: ' + string.valueOf(limits.getCpuTime() - t));
    }

    public static void DeleteObjects()
    {
        List<TestObject__c> objects = [Select ID from TestObject__c Limit 9000];
        delete objects;
    }
}

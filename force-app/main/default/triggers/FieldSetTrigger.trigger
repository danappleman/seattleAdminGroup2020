trigger FieldSetTrigger on TestObject__c (before insert) {

    for(TestObject__c obj: Trigger.new)
    {
        if(obj.Source__c == 1) obj.Text_Field__c = 'A';
        if(obj.Source__c == 2) obj.Text_Field__c = 'B';
        if(obj.Source__c == 3) obj.Text_Field__c = 'C';
        if(obj.Source__c == 4) obj.Text_Field__c = 'D';
        if(obj.Source__c == 5) obj.Text_Field__c = 'F';
    }


}
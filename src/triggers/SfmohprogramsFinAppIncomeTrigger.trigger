/**
 * @author:      Kimiko Roberto
 * @date:        06/05/2014
 * @description: Trigger for Financial Application Incomes.
 * @history:     06/09/2015 - Heidi Tang - Edited
 */
trigger SfmohprogramsFinAppIncomeTrigger on Financial_Application_Income__c (before insert) {
	
	SfmohprogramsFinAppIncomeTriggerHandler handler = new SfmohprogramsFinAppIncomeTriggerHandler();
	
    if(trigger.isBefore && trigger.isInsert){
    	handler.beforeInsert(Trigger.new);
    }
}
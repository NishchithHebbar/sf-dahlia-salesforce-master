/**
 * @author:      Kimiko Roberto
 * @date:        06/05/2014
 * @description: Trigger for Personal Incomes.
 * @history:     06/09/2015 - Heidi Tang - Edited
 */
trigger SfmohprgramsPersonalIncomeTrigger on Personal_Income__c (before insert) {

	SfmohprgramsPersonalIncomeTriggerHandler handler = new SfmohprgramsPersonalIncomeTriggerHandler();
	
    if(trigger.isBefore && trigger.isInsert){
    	handler.beforeInsert(Trigger.new);
    }
}
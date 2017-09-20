/**
 * @author:      Kimiko Roberto
 * @date:        06/05/2014
 * @description: Trigger for Financial Application Assets.
 * @history:     06/09/2015 - Heidi Tang - Edited
 */
trigger SfmohprogramsFinAppAssetTrigger on Financial_Application_Asset__c (before insert) {

	SfmohprogramsFinAppAssetTriggerHandler handler = new SfmohprogramsFinAppAssetTriggerHandler();
	
    if(trigger.isBefore && trigger.isInsert){
    	handler.beforeInsert(Trigger.new);
    }
}
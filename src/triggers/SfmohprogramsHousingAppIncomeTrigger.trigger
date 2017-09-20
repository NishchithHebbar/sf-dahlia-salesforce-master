/**
 * @author:      Kimiko Roberto
 * @date:        06/05/2014
 * @description: Trigger for Housing Application Incomes.
 * @history:     06/09/2015 - Heidi Tang - Edited
 */
trigger SfmohprogramsHousingAppIncomeTrigger on Housing_Application_Income__c (before insert) {

	SfmohprogramsHousingAppIncomeTriggerHand handler = new SfmohprogramsHousingAppIncomeTriggerHand();

    if(trigger.isBefore && trigger.isInsert){
        handler.beforeInsert(Trigger.new);
    }
}
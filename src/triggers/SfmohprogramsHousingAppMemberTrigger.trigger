/**
 * @author:      Kingsley Tumaneng
 * @date:        04/28/2014
 * @description: Trigger for Housing Application Members.
 * @history:     06/09/2015 - Heidi Tang - Edited
 */
trigger SfmohprogramsHousingAppMemberTrigger on Housing_Application_Member__c (after insert) {

	SfmohprogramsHousingAppMemberTriggerHand handler = new SfmohprogramsHousingAppMemberTriggerHand();

    if(trigger.isAfter && trigger.isInsert){
        handler.afterInsert(Trigger.new);
    }
}
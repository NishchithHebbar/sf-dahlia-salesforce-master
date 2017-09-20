<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>UpdatePOBoxFieldFalse</fullName>
        <field>Accepting_applications_by_PO_Box__c</field>
        <literalValue>0</literalValue>
        <name>UpdatePOBoxFieldFalse</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateSASEfieldFALSE</fullName>
        <field>SASE_Required_for_Lottery_Ticket__c</field>
        <literalValue>0</literalValue>
        <name>UpdateSASEfieldFALSE</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateSASEfieldTRUE</fullName>
        <field>SASE_Required_for_Lottery_Ticket__c</field>
        <literalValue>1</literalValue>
        <name>UpdateSASEfieldTRUE</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>IFAcceptingApplicationsByPOBox</fullName>
        <actions>
            <name>UpdateSASEfieldTRUE</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Listing__c.Accepting_applications_by_PO_Box__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Listing__c.SASE_Required_for_Lottery_Ticket__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>If Accepting applications by PO Box TRUE then Update SASE_Required_for_Lottery_Ticket__c to TRUE</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>IFNotAcceptingApplicationsByPOBox</fullName>
        <actions>
            <name>UpdateSASEfieldFALSE</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>(1 AND 2)</booleanFilter>
        <criteriaItems>
            <field>Listing__c.Accepting_applications_by_PO_Box__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>Listing__c.SASE_Required_for_Lottery_Ticket__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>If Accepting applications by PO Box FALSE then Update SASE_Required_for_Lottery_Ticket__c to FALSE</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>IFNotSASERequired</fullName>
        <actions>
            <name>UpdatePOBoxFieldFalse</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>UpdateSASEfieldFALSE</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Listing__c.SASE_Required_for_Lottery_Ticket__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>If Accepting applications by PO Box FALSE then Update SASE_Required_for_Lottery_Ticket__c to FALSE</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>

#!/bin/sh
SFDCURL=https://test.salesforce.com/services/Soap/u/21.0
#SFDCURL=https://login.salesforce.com/services/Soap/u/21.0 #Change for Production
username=<yourUsernameGoesHere>
password="<yourPasswordGoesHere>" #escape your special characters (i.e. \$)
outputFolder=<exportDirectoryName>
dbName=<setYourDBNameHere>
tableList=Lead,Account,Contact,AccountContactRole,Opportunity,OpportunityLineItem,OpportunityContactRole,Product2,Asset,Apttus_Proposal__Proposal__c,Apttus_Config2__AssetLineItem__c,Apttus_Config2__PriceList__c,Apttus_Config2__PriceListItem__c,Apttus_Config2__PriceListCategory__c,Apttus_Config2__ClassificationName__c,Apttus_Config2__ProductConfiguration__c,Apttus_Config2__AccountLocation__c,Apttus_Config2__ServiceLocation__c,SVMXC__Site__c,Case,SVMXC__Installed_Product__c,SVMXC__Quote_Line__c,SVMXC__Service_Order__c,SVMXC__Service_Template__c,SVMXC__Service_Contract__c,SVMXC__Service_Contract__c,SVMXC__Warranty__c,SVMXC__Quote__c,SVMXC__Service_Group_Product__c,Apttus__APTS_Agreement__c,Apttus_Config2__Order__c,SVMXC__RMA_Shipment_Order__c,SVMXC__RMA_Shipment_Line__c,SVMXC__Service_Order_Line__c,SVMXC__Service_Group_Members__c,DCP_Field_Actions_Notification__c,SVMXC__Service_Group__c,DCP_Related_Codes__c

java -cp schemaSpy_5.0.0.jar:force-metadata-jdbc-driver-2.2.jar net.sourceforge.schemaspy.Main -t force -u $username -p $password -font Arial -fontsize 8 -hq -norows -o $outputFolder -db $dbName -desc "Extracted from dcpintdev on Force.com" -connprops "url\=$SFDCURL;standard\\=false;custom\\=false;excludes\\=;includes\\=$tableList"
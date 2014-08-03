#!/bin/sh
JARDIR=jars

CP=$JARDIR/schemaSpy_5.0.0.jar
CP=$CP:$JARDIR/force-metadata-jdbc-driver-2.2.jar

response=

echo
echo " This script will generate SchemaSpy docs for your Salesforce account "
echo 
echo "Enter your Salesforce username (e.g., user@domain.com) > "
read response
if [ -z "$response" ]; then
	echo "Username is required"
	exit 0
fi

username=$response

unset response;
echo "Enter your Salesforce password (will not be printed to screen) > "
read -s response
if [ -z "$response" ]; then
	echo "Password is required"
	exit 0
fi

password=$response

unset response;
echo "If you're required to use a Security Token and you didn't append it to the password, specify it here > "
read -s response
if [ "$response" ]; then
	password="$password$response"
fi

java -cp $CP net.sourceforge.schemaspy.Main \
  -t force -hq -norows -charset utf8 -u $username -p $password \
  -o docs -connprops "custom\\=true\;standard\\=true"
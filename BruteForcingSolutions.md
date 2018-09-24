## Brute Forcing Solutions
### Juice Shop
#### Admin Login
* http://localhost:3000/#/login.
* Use email list gathered from viewing the Administration page
* use password list SecLists/Passwords/1050best.txt
* admin@juice-sh.op:admin123



### Altoro Mutual
#### Brute Force Logins
* Use list of users from username enumeration
* Try to see if users used username as password
  * admin:admin
  * tuser:tuser
* Use password lists to brute force other users
  * cclay:ali
  * jsmith:demo1234
  * sjoe:frazier
  * sspeed:demo1234


#### Bonus Security Misconfiguration
* Passwords are not case sensitive
* this would shorten your password list
#### Bonus Special Characters
* sql injection bypass of login

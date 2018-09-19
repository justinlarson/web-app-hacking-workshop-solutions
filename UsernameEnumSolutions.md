
# Juice Shop
## User Registration
* http://localhost:3000/api/Users/
* attempt account creation with known email address
* POST params: {"email":"admin@juice-sh.op","password":"password","passwordRepeat":"password","securityQuestion":{"id":2,"question":"Mother's maiden name?","createdAt":"2018-09-06T13:20:02.193Z","updatedAt":"2018-09-06T13:20:02.193Z"},"securityAnswer":"bob"}
* Response: {"message":"Validation error","errors":[{"field":"email","message":"email must be unique"}]}


## Forgot Password
* Rest call checks email address with every keystroke but send it to intruder 
* http://localhost:3000/rest/user/security-question?email=justin@email.com
* if the account exists the respone returns the users secret question

# AltoroMutual
## Login
* Use list of users from username enumeration
* Try to see if users used username as password
  * admin:admin
  * tuser:tuser
* Use password lists to brute force other users
  * cclay:ali
  * jsmith:demo1234
  * sjoe:frazier
  * sspeed:demo1234
  
### Bonus Security Misconfiguration
* passwords are not case sensitive Password = password
### Bonus Special Characters
* some special characters cause sql errors :thinking_face:
 


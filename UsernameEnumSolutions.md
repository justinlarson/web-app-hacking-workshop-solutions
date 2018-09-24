
# AltoroMutual
## Login
* Use CommonUsernameList.txt
* Use grep options in intruder `Login Failed: Your password appears to be invalid.`
* create list of altoro users

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




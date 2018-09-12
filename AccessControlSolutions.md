## Access the administration section of the store.
Login and manually try URLS
URL = http://localhost:3000/#/administration
Or 
view the juice-shop.min.js and find the /administration route in the js

## Access someone else's basket.
Add items to basket
Intercept Request to view basket 
http://localhost:3000/rest/basket/4
IDOR change number to 1
Other users basket is displayed

## Get rid of all 5-star customer feedback.
Delete five-stars from the adminstration page

## Post some feedback in another users name.	
Intercept a review request http://localhost:3000/rest/product/23/reviews
Modify json with different users email `{"message":"Fake Review","author":"morty@juice-sh.op"}`
*The score-board check isn't working*


## Change the href of the link within the O-Saft product description into http://kimminich.de.
*come back*

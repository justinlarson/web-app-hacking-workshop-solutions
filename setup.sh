!#/bin/bash
git clone git@github.com:sqlmapproject/sqlmap.git &
git clone git@github.com:danielmiessler/SecLists.git &
git clone git@github.com:nccgroup/autochrome.git &
docker run --rm -it -p 80:80 cyrivs89/web-dvws &
docker pull bkimminich/juice-shop
docker run --rm -p 3000:3000 bkimminich/juice-shop

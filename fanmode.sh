
设置手动模式

curl 'https://192.168.1.31/rpc/setfanspeed.asp' \
  -H 'Content-Type: application/json;charset=UTF-8' \
  -H $'Cookie: SessionCookie=hF1X0xDpCUq5ka7PzIjl9JTdKbWwygtW017;    settings={eth:[0,1],ethstr:[\'eth0\',\'eth1\'],lan:[8,1],enable:[0,1],flag:[0,0]}' \
  -H 'X-CSRFTOKEN: dZRacNbuZd' \
  -H 'X-Requested-With: XMLHttpRequest' \
  --data-raw 'MODE=1' \
  --compressed \
  --insecure
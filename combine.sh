#!/bin/bash

# 设置IP地址变量
IP_ADDRESS="192.168.1.31"


# 发送第一个请求获取返回值
response=$(curl -k "https://$IP_ADDRESS/rpc/WEBSES/create.asp" \
-H 'Accept: application/json, text/plain, /' \
-H "Origin: https://$IP_ADDRESS" \
-H 'Sec-Fetch-Dest: empty' \
-H 'Sec-Fetch-Mode: cors' \
-H 'Sec-Fetch-Site: same-origin' \
--data-raw 'WEBVAR_USERNAME=<你的账号>&WEBVAR_PASSWORD=<你的密码>' \
--compressed \
--insecure)

# 解析返回值获取SESSION_COOKIE和CSRFTOKEN
SESSION_COOKIE=$(echo "$response" | grep -oP "(?<=SESSION_COOKIE' : ').*?(?=')")
CSRFTOKEN=$(echo "$response" | grep -oP "(?<=CSRFTOKEN' : ').*?(?=')")

# 创建.sh文件并写入cURL命令
cat > set_fan_speed_temp.sh <<EOF
#!/bin/bash


curl 'https://$IP_ADDRESS/rpc/setfanmode.asp' \
  -H 'Content-Type: application/json;charset=UTF-8' \
  -H $'Cookie: BMC_IP_ADDR=$IP_ADDRESS; test=1; SessionCookie=$SESSION_COOKIE; SessionExpired=false; Username=Asd123; PNO=4; gMultiLAN=true; settings={eth:[0,1],ethstr:[\'eth0\',\'eth1\'],lan:[8,1],enable:[0,1],flag:[0,0]}' \
  -H 'Origin: https://$IP_ADDRESS' \
  -H 'Referer: https://$IP_ADDRESS/main.html' \
  -H 'X-CSRFTOKEN: $CSRFTOKEN' \
  -H 'X-Requested-With: XMLHttpRequest' \
  --data-raw 'MODE=1' \
  --compressed \
  --insecure ;


# sleep 1

curl "https://$IP_ADDRESS/rpc/setfanspeed.asp" \
-H 'Content-Type: application/json;charset=UTF-8' \
-H \$'Cookie: SessionCookie=$SESSION_COOKIE; settings={eth:[0,1],ethstr:[\'eth0\',\'eth1\'],lan:[8,1],enable:[0,1],flag:[0,0]}' \
-H 'X-CSRFTOKEN: $CSRFTOKEN' \
-H 'X-Requested-With: XMLHttpRequest' \
--data-raw 'ID=0&PERCENT=20' \
--compressed \
--insecure

# sleep 0.1

curl "https://$IP_ADDRESS/rpc/setfanspeed.asp" \
-H 'Content-Type: application/json;charset=UTF-8' \
-H \$'Cookie: SessionCookie=$SESSION_COOKIE; settings={eth:[0,1],ethstr:[\'eth0\',\'eth1\'],lan:[8,1],enable:[0,1],flag:[0,0]}' \
-H 'X-CSRFTOKEN: $CSRFTOKEN' \
-H 'X-Requested-With: XMLHttpRequest' \
--data-raw 'ID=2&PERCENT=18' \
--compressed \
--insecure

# sleep 0.1

curl "https://$IP_ADDRESS/rpc/setfanspeed.asp" \
-H 'Content-Type: application/json;charset=UTF-8' \
-H \$'Cookie: SessionCookie=$SESSION_COOKIE; settings={eth:[0,1],ethstr:[\'eth0\',\'eth1\'],lan:[8,1],enable:[0,1],flag:[0,0]}' \
-H 'X-CSRFTOKEN: $CSRFTOKEN' \
-H 'X-Requested-With: XMLHttpRequest' \
--data-raw 'ID=4&PERCENT=20' \
--compressed \
--insecure

# sleep 0.1

curl "https://$IP_ADDRESS/rpc/setfanspeed.asp" \
-H 'Content-Type: application/json;charset=UTF-8' \
-H \$'Cookie: SessionCookie=$SESSION_COOKIE; settings={eth:[0,1],ethstr:[\'eth0\',\'eth1\'],lan:[8,1],enable:[0,1],flag:[0,0]}' \
-H 'X-CSRFTOKEN: $CSRFTOKEN' \
-H 'X-Requested-With: XMLHttpRequest' \
--data-raw 'ID=6&PERCENT=18' \
--compressed \
--insecure


EOF

# 添加执行权限并运行.sh文件
chmod +x set_fan_speed_temp.sh
./set_fan_speed_temp.sh
rm set_fan_speed_temp.sh

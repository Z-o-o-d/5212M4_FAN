
# -k是ssl不安全用的，参考
# https://blog.csdn.net/lixuande19871015/article/details/101206642

# 旧IPMI用http
# 新IPMI用http
# 版本分界不知道
# 可能只是个人水平有限



curl -k 'https://<你的IPMI地址>/rpc/WEBSES/create.asp'                         
-H 'Accept: application/json, text/plain, */*' \
-H 'Accept-Language: zh-CN,zh;q=0.9,en;q=0.8' \
-H 'Connection: keep-alive' \
-H 'Content-Type: application/json;charset=UTF-8' \
-H 'Cookie: BMC_IP_ADDR=<你的IPMI地址>; test=1' \
-H 'Origin: https://<你的IPMI地址>' \
-H 'Referer: https://<你的IPMI地址>/index.html' \
-H 'Sec-Fetch-Dest: empty' \
-H 'Sec-Fetch-Mode: cors' \
-H 'Sec-Fetch-Site: same-origin' \
-H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36' \
-H 'sec-ch-ua: " Not A;Brand";v="99", "Chromium";v="102"' \
-H 'sec-ch-ua-mobile: ?0' \
-H 'sec-ch-ua-platform: "Windows"' \
--data-raw 'WEBVAR_USERNAME=<你的账号名>&WEBVAR_PASSWORD=<你的账号密码>' \
--compressed \
--insecure ;


